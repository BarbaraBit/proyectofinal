document.addEventListener('DOMContentLoaded', () => {
    const form = document.querySelector('form');
    
    form.addEventListener('submit', (event) => {
        if (!validateForm()) {
            console.log('El formulario no es válido. Por favor, corregir errores');
            event.preventDefault(); 
        } else {
            console.log('El formulario es válido. Enviar datos');
    
        }
    });

    const validateForm = () => {
        let isValid = true;

        isValid = validateField('nombre', 'campo nombre es obligatorio') && isValid;

        isValid = validateField('apellido', 'campo apellido es obligatorio') && isValid;

        isValid = validateEmailField('email', 'El correo electrónico no es válido') && isValid;

        isValid = validateField('password', 'La contraseña es obligatoria') && isValid;

        isValid = validateField('fechaNacimiento', ' fecha de nacimiento es obligatoria') && isValid;

        isValid = validateField('pais', 'El país es obligatorio') && isValid;

        const terminos = document.getElementById('terminos').checked;
        if (!terminos) {
            isValid = false;
            setErrorFor(document.getElementById('terminos'), 'Aceptar términos y condiciones');
        } else {
            setSuccessFor(document.getElementById('terminos'));
        }

        return isValid;
    };

    const validateField = (fieldId, errorMessage) => {
        const field = document.getElementById(fieldId);
        const value = field.value.trim();
        if (value === '') {
            setErrorFor(field, errorMessage);
            return false;
        } else {
            setSuccessFor(field);
            return true;
        }
    };

    const validateEmailField = (fieldId, errorMessage) => {
        const field = document.getElementById(fieldId);
        const email = field.value.trim();
        if (email === '') {
            setErrorFor(field, 'Email obligatorio');
            return false;
        } else if (!isEmail(email)) {
            setErrorFor(field, errorMessage);
            return false;
        } else {
            setSuccessFor(field);
            return true;
        }
    };

    const setErrorFor = (input, message) => {
        const formControl = input.closest('div');
        const errorText = formControl.querySelector('.error-text');
        formControl.classList.add('error');
        errorText.innerText = message;
        input.focus();
    };

    const setSuccessFor = (input) => {
        const formControl = input.closest('div');
        formControl.classList.remove('error');
        const errorText = formControl.querySelector('.error-text');
        errorText.innerText = '';
    };

    const isEmail = (email) => {
        const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return re.test(email);
    };
    
    form.querySelectorAll('input').forEach(input => {
        input.addEventListener('input', () => {
        const value = input.value.trim();
        if (value !== '') {
                setSuccessFor(input);
            }
        });
    });

    form.querySelectorAll('select').forEach(select => {
        select.addEventListener('change', () => {

            const value = select.value;
            
            if (value !== '') {
                setSuccessFor(select);
            }
        });
    });
});
