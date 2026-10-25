require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75111 = class("Quest75111", QuestActorProxy)
Quest75111.defaultAlias = "Quest75111"
local clientData
local this
local mainID
local actorAlias

function Quest75111:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75111:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7511101"] = self.OnSubStart7511101,
        ["7511110"] = self.OnSubStart7511110,
        ["7511111"] = self.OnSubStart7511111,
        ["7511112"] = self.OnSubStart7511112,
        ["7511113"] = self.OnSubStart7511113,
        ["7511102"] = self.OnSubStart7511102,
        ["7511103"] = self.OnSubStart7511103,
        ["7511104"] = self.OnSubStart7511104,
        ["7511105"] = self.OnSubStart7511105,
        ["7511107"] = self.OnSubStart7511107,
        ["7511106"] = self.OnSubStart7511106,
        ["7511120"] = self.OnSubStart7511120
    }
end

function Quest75111:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7511101"] = self.OnSubFinish7511101,
        ["7511110"] = self.OnSubFinish7511110,
        ["7511111"] = self.OnSubFinish7511111,
        ["7511112"] = self.OnSubFinish7511112,
        ["7511113"] = self.OnSubFinish7511113,
        ["7511102"] = self.OnSubFinish7511102,
        ["7511103"] = self.OnSubFinish7511103,
        ["7511104"] = self.OnSubFinish7511104,
        ["7511105"] = self.OnSubFinish7511105,
        ["7511107"] = self.OnSubFinish7511107,
        ["7511106"] = self.OnSubFinish7511106,
        ["7511120"] = self.OnSubFinish7511120
    }
end

function Quest75111:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75111:OnSubStart7511101(arg1)
    print("OnSubStart7511101")
    actorUtils.FinishQuestID(false, 7511101)
end

function Quest75111:OnSubFinish7511101(arg1)
    print("OnSubFinish7511101")
end

function Quest75111:OnSubStart7511110(arg1)
    print("OnSubStart7511110")
end

function Quest75111:OnSubFinish7511110(arg1)
    print("OnSubFinish7511110")
end

function Quest75111:OnSubStart7511111(arg1)
    print("OnSubStart7511111")
end

function Quest75111:OnSubFinish7511111(arg1)
    print("OnSubFinish7511111")
end

function Quest75111:OnSubStart7511112(arg1)
    print("OnSubStart7511112")
end

function Quest75111:OnSubFinish7511112(arg1)
    print("OnSubFinish7511112")
end

function Quest75111:OnSubStart7511113(arg1)
    print("OnSubStart7511113")
end

function Quest75111:OnSubFinish7511113(arg1)
    print("OnSubFinish7511113")
end

function Quest75111:OnSubStart7511102(arg1)
    print("OnSubStart7511102")
end

function Quest75111:OnSubFinish7511102(arg1)
    print("OnSubFinish7511102")
end

function Quest75111:OnSubStart7511103(arg1)
    print("OnSubStart7511103")
end

function Quest75111:OnSubFinish7511103(arg1)
    print("OnSubFinish7511103")
end

function Quest75111:OnSubStart7511104(arg1)
    print("OnSubStart7511104")
end

function Quest75111:OnSubFinish7511104(arg1)
    print("OnSubFinish7511104")
end

function Quest75111:OnSubStart7511105(arg1)
    print("OnSubStart7511105")
end

function Quest75111:OnSubFinish7511105(arg1)
    print("OnSubFinish7511105")
end

function Quest75111:OnSubStart7511107(arg1)
    print("OnSubStart7511107")
end

function Quest75111:OnSubFinish7511107(arg1)
    print("OnSubFinish7511107")
end

function Quest75111:OnSubStart7511106(arg1)
    print("OnSubStart7511106")
end

function Quest75111:OnSubFinish7511106(arg1)
    print("OnSubFinish7511106")
end

function Quest75111:OnSubStart7511120(arg1)
    print("OnSubStart7511120")
    actorUtils.FinishQuestID(false, 7511120)
end

function Quest75111:OnSubFinish7511120(arg1)
    print("OnSubFinish7511120")
end

return Quest75111
