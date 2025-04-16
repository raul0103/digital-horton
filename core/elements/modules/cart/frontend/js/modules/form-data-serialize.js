export default function formDataSerialize(form) {
  let fillable = ["id", "price", "old_price", "count", "unit", "user_discount"];

  let result = {};
  Array.from(form.elements).forEach((elem) => {
    if (fillable.indexOf(elem.name) > -1) {
      result[elem.name] = elem.value;
    }
  });

  return result;
}
