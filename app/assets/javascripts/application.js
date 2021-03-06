// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require rails-ujs
//= require turbolinks
//= require_tree .
function limpa_formulário_cep() {
            //Limpa valores do formulário de cep.
            document.getElementById('paciente_endereco').value=("");
            document.getElementById('paciente_bairro').value=("");
            document.getElementById('paciente_cidade').value=("");
            document.getElementById('paciente_estado').value=("");
    }

    function meu_callback(conteudo) {
        if (!("erro" in conteudo)) {
            //Atualiza os campos com os valores.
            document.getElementById('paciente_endereco').value=(conteudo.logradouro);
            document.getElementById('paciente_bairro').value=(conteudo.bairro);
            document.getElementById('paciente_cidade').value=(conteudo.localidade);
            document.getElementById('paciente_estado').value=(conteudo.uf);
        } //end if.
        else {
            //CEP não Encontrado.
            limpa_formulário_cep();
            alert("CEP não encontrado.");
        }
    }
function pesquisacep(valor) {

        //Nova variável "cep" somente com dígitos.
        var cep = valor.replace(/\D/g, '');

        //Verifica se campo cep possui valor informado.
        if (cep != "") {

            //Expressão regular para validar o CEP.
            var validacep = /^[0-9]{8}$/;

            //Valida o formato do CEP.
            if(validacep.test(cep)) {

                //Preenche os campos com "..." enquanto consulta webservice.
                document.getElementById('paciente_endereco').value="...";
                document.getElementById('paciente_bairro').value="...";
                document.getElementById('paciente_cidade').value="...";
                document.getElementById('paciente_estado').value="...";
                //Cria um elemento javascript.
                var script = document.createElement('script');

                //Sincroniza com o callback.
                script.src = 'https://viacep.com.br/ws/'+ cep + '/json/?callback=meu_callback';

                //Insere script no documento e carrega o conteúdo.
                document.body.appendChild(script);

            } //end if.
            else {
                //cep é inválido.
                limpa_formulário_cep();
                alert("Formato de CEP inválido.");
            }
        } //end if.
        else {
            //cep sem valor, limpa formulário.
            limpa_formulário_cep();
        }
    };
/* hospital cep */ 
function limpa_formulário_hospital_cep() {
            //Limpa valores do formulário de cep.
            document.getElementById('hospital_endereco').value=("");
            document.getElementById('hospital_bairro').value=("");
            document.getElementById('hospital_cidade').value=("");
            document.getElementById('hospital_estado').value=("");
    }

    function meuhospital_callback(conteudo) {
        if (!("erro" in conteudo)) {
            //Atualiza os campos com os valores.
            document.getElementById('hospital_endereco').value=(conteudo.logradouro);
            document.getElementById('hospital_bairro').value=(conteudo.bairro);
            document.getElementById('hospital_cidade').value=(conteudo.localidade);
            document.getElementById('hospital_estado').value=(conteudo.uf);
        } //end if.
        else {
            //CEP não Encontrado.
            limpa_formulário_hospital_cep();
            alert("CEP não encontrado.");
        }
    }
function pesquisacephospital(valor) {

        //Nova variável "cep" somente com dígitos.
        var cep = valor.replace(/\D/g, '');

        //Verifica se campo cep possui valor informado.
        if (cep != "") {

            //Expressão regular para validar o CEP.
            var validacep = /^[0-9]{8}$/;

            //Valida o formato do CEP.
            if(validacep.test(cep)) {

                //Preenche os campos com "..." enquanto consulta webservice.
                document.getElementById('hospital_endereco').value="...";
                document.getElementById('hospital_bairro').value="...";
                document.getElementById('hospital_cidade').value="...";
                document.getElementById('hospital_estado').value="...";
                //Cria um elemento javascript.
                var script = document.createElement('script');

                //Sincroniza com o callback.
                script.src = 'https://viacep.com.br/ws/'+ cep + '/json/?callback=meuhospital_callback';

                //Insere script no documento e carrega o conteúdo.
                document.body.appendChild(script);

            } //end if.
            else {
                //cep é inválido.
                limpa_formulário_hospital_cep();
                alert("Formato de CEP inválido.");
            }
        } //end if.
        else {
            //cep sem valor, limpa formulário.
            limpa_formulário_hospital_cep();
        }
    };