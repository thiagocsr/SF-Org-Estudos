({
	myAction : function(component, event, helper) {
        
		const calculator = document.querySelector('.calculator');
		const keys = calculator.querySelector('.calculator__keys');

		const display = document.querySelector('.calculator__display');
        

        keys.addEventListener('click', e => {
          if (e.target.matches('button')) {
            let num1;
            let num2;
            const key = e.target;
            const action = key.dataset.action;
            const keyContent = key.textContent;
            const displayedNum = display.textContent;
            const previousKeyType = calculator.dataset.previousKeyType;
            
            if (action === 'decimal') {
                  display.textContent = displayedNum + '.';
             }
			if (
              action === 'add' ||
              action === 'subtract' ||
              action === 'multiply' ||
              action === 'divide'
            ) {
                  	key.classList.add('is-depressed');
            		calculator.dataset.previousKeyType = 'operator';
            		num1 = displayedNum;
  					calculator.dataset.operator = action;
              }
            if (!action) {
              if (displayedNum === '0' || previousKeyType === 'operator') {
                display.textContent = keyContent;
              } else {
                display.textContent = displayedNum + keyContent;
              }
            }
        
        if (action === 'clear') {
          	display.textContent = '0';
        	num1 = '0';
            num2 = '0';
        }
        
        if (action === 'calculate') {
          const operator = calculator.dataset.operator;
          num2 = displayedNum;
          let result = calculate(num1, operator, num2);
          display.textContent = result;
        }
          }
                Array.from(key.parentNode.children)
      			.forEach(k => k.classList.remove('is-depressed'));
            
        })
        
        const calculate = (n1, operator, n2) => {
          const firstNum = parseInt(n1);alert(firstNum);
          const secondNum = parseInt(n2);alert(secondNum);
          if (operator === 'add') return firstNum + secondNum;
          if (operator === 'subtract') return firstNum - secondNum;
          if (operator === 'multiply') return firstNum * secondNum;
          if (operator === 'divide') return firstNum / secondNum;
        }
	},
        doInit: function(cmp) {
        // Set the attribute value. 
        // You could also fire an event here instead.
        cmp.set("v.setMeOnInit", "controller init magic!");
    }
})