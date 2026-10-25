require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21019 = class("Quest21019", QuestActorProxy)
Quest21019.defaultAlias = "Quest21019"
local Q21019ClientConfig = require("Quest/Client/Q21019ClientConfig")

local subIDs = Q21019ClientConfig.SubIDs
local actors = Q21019ClientConfig.Actors
local gadgetData_1 = actors.GadgetData_1
local gadgetData_2 = actors.GadgetData_2
local gadgetData_3 = actors.GadgetData_3
local datas = Q21019ClientConfig.Datas

function Quest21019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2101901"] = self.OnSubStart2101901,
        ["2101902"] = self.OnSubStart2101902,
        ["2101903"] = self.OnSubStart2101903,
        ["2101904"] = self.OnSubStart2101904,
        ["2101905"] = self.OnSubStart2101905,
        ["2101906"] = self.OnSubStart2101906,
        ["2101907"] = self.OnSubStart2101907
    }
end

function Quest21019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2101901"] = self.OnSubFinish2101901,
        ["2101902"] = self.OnSubFinish2101902,
        ["2101903"] = self.OnSubFinish2101903,
        ["2101904"] = self.OnSubFinish2101904,
        ["2101905"] = self.OnSubFinish2101905,
        ["2101906"] = self.OnSubFinish2101906,
        ["2101907"] = self.OnSubFinish2101907
    }
end

function Quest21019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2101901"] = self.OnSubFailed2101901,
        ["2101902"] = self.OnSubFailed2101902,
        ["2101903"] = self.OnSubFailed2101903,
        ["2101904"] = self.OnSubFailed2101904,
        ["2101905"] = self.OnSubFailed2101905,
        ["2101906"] = self.OnSubFailed2101906,
        ["2101907"] = self.OnSubFailed2101907
    }
end

function Quest21019:Start()
    print("Start")
end

function Quest21019:OnDestroy()
    print("OnDestroy")
end

function Quest21019:OnSubStart2101901(arg1)
    print("OnSubStart2101901")
end

function Quest21019:OnSubFinish2101901(arg1)
    print("OnSubFinish2101901")
end

function Quest21019:OnSubFailed2101901(arg1)
    print("OnSubFailed2101901")
end

function Quest21019:OnSubStart2101902(arg1)
    print("OnSubStart2101902")
end

function Quest21019:OnSubFinish2101902(arg1)
    print("OnSubFinish2101902")
end

function Quest21019:OnSubFailed2101902(arg1)
    print("OnSubFailed2101902")
end

function Quest21019:OnSubStart2101903(arg1)
    print("OnSubStart2101903")
    self:SpawnGadget(actors.GadgetData_1.id, actors.GadgetData_1.pos, actors.GadgetData_1.rot, actors.GadgetData_1.name)
    self:SpawnGadget(actors.GadgetData_2.id, actors.GadgetData_2.pos, actors.GadgetData_2.rot, actors.GadgetData_2.name)
    self:SpawnGadget(actors.GadgetData_3.id, actors.GadgetData_3.pos, actors.GadgetData_3.rot, actors.GadgetData_3.name)
end

function Quest21019:OnSubFinish2101903(arg1)
    print("OnSubFinish2101903")
end

function Quest21019:OnSubFailed2101903(arg1)
    print("OnSubFailed2101903")
end

function Quest21019:OnSubStart2101904(arg1)
    print("OnSubStart2101904")
end

function Quest21019:OnSubFinish2101904(arg1)
    print("OnSubFinish2101904")
end

function Quest21019:OnSubFailed2101904(arg1)
    print("OnSubFailed2101904")
end

function Quest21019:OnSubStart2101905(arg1)
    print("OnSubStart2101905")
end

function Quest21019:OnSubFinish2101905(arg1)
    print("OnSubFinish2101905")
end

function Quest21019:OnSubFailed2101905(arg1)
    print("OnSubFailed2101905")
end

function Quest21019:OnSubStart2101906(arg1)
    print("OnSubStart2101906")
end

function Quest21019:OnSubFinish2101906(arg1)
    print("OnSubFinish2101906")
end

function Quest21019:OnSubFailed2101906(arg1)
    print("OnSubFailed2101906")
end

function Quest21019:OnSubStart2101907(arg1)
    print("OnSubStart2101907")
end

function Quest21019:OnSubFinish2101907(arg1)
    print("OnSubFinish2101907")
end

function Quest21019:OnSubFailed2101907(arg1)
    print("OnSubFailed2101907")
end

return Quest21019
