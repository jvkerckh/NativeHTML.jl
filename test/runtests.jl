using NativeHTML

frag = fragment() do
    div() do
        span("Hello", style="color:red;")
        text(", ")
        b("World!")
    end
end

println(frag)
display(frag)

page = html() do
    head() do
        title("Hello, World!")
    end
    body() do
        div() do
            span("Hello", inline=true, style="color:red;")
            text(", ")
            b("World!", inline=true)
        end
    end
end

println(page)
display(page)

sleep(1)

page2 = html() do 
    head() do 
        title("Hello again, world!")
    end
    body() do 
        div() do 
            text("Block element 1")
        end
        div() do 
            text("block element 2")
        end
    end
end

println(page2)
display(page2)