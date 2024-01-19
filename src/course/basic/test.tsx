export default function Test() {

    function clickHandler() {
        console.log('clicked')
    }

    return (
        <>
            <h1>Hello World</h1>
            <p>This is a test</p>
            <button onClick={clickHandler}>Click Me</button>
        </>
    )
}
