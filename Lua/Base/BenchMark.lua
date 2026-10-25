return {
    memory = require("Base/memory"),
    profiler = require("Base/profiler"),
    StartProfiler = function(arg1)
        arg1.profiler.start()
    end,
    StopProfiler = function(arg1)
        arg1.profiler.stop()
    end,
    Report = function(arg1)
        print(arg1.profiler.report())
    end,
    PrintTotalMemory = function(arg1)
        return arg1.memory.total()
    end,
    PrintMemorySnapshot = function(arg1)
        print(arg1.memory.snapshot())
    end
}
