require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11044 = class("Quest11044", QuestActorProxy)
Quest11044.defaultAlias = "Quest11044"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest11044:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest11044:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1104406"] = self.OnSubStart1104406,
        ["1104407"] = self.OnSubStart1104407,
        ["1104408"] = self.OnSubStart1104408,
        ["1104409"] = self.OnSubStart1104409,
        ["1104410"] = self.OnSubStart1104410,
        ["1104401"] = self.OnSubStart1104401,
        ["1104404"] = self.OnSubStart1104404,
        ["1104414"] = self.OnSubStart1104414,
        ["1104415"] = self.OnSubStart1104415,
        ["1104416"] = self.OnSubStart1104416,
        ["1104405"] = self.OnSubStart1104405,
        ["1104402"] = self.OnSubStart1104402,
        ["1104411"] = self.OnSubStart1104411,
        ["1104412"] = self.OnSubStart1104412,
        ["1104413"] = self.OnSubStart1104413,
        ["1104403"] = self.OnSubStart1104403
    }
end

function Quest11044:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1104406"] = self.OnSubFinish1104406,
        ["1104407"] = self.OnSubFinish1104407,
        ["1104408"] = self.OnSubFinish1104408,
        ["1104409"] = self.OnSubFinish1104409,
        ["1104410"] = self.OnSubFinish1104410,
        ["1104401"] = self.OnSubFinish1104401,
        ["1104404"] = self.OnSubFinish1104404,
        ["1104414"] = self.OnSubFinish1104414,
        ["1104415"] = self.OnSubFinish1104415,
        ["1104416"] = self.OnSubFinish1104416,
        ["1104405"] = self.OnSubFinish1104405,
        ["1104402"] = self.OnSubFinish1104402,
        ["1104411"] = self.OnSubFinish1104411,
        ["1104412"] = self.OnSubFinish1104412,
        ["1104413"] = self.OnSubFinish1104413,
        ["1104403"] = self.OnSubFinish1104403
    }
end

function Quest11044:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1104406"] = self.OnSubFailed1104406,
        ["1104407"] = self.OnSubFailed1104407,
        ["1104408"] = self.OnSubFailed1104408,
        ["1104409"] = self.OnSubFailed1104409,
        ["1104410"] = self.OnSubFailed1104410,
        ["1104401"] = self.OnSubFailed1104401,
        ["1104404"] = self.OnSubFailed1104404,
        ["1104414"] = self.OnSubFailed1104414,
        ["1104415"] = self.OnSubFailed1104415,
        ["1104416"] = self.OnSubFailed1104416,
        ["1104405"] = self.OnSubFailed1104405,
        ["1104402"] = self.OnSubFailed1104402,
        ["1104411"] = self.OnSubFailed1104411,
        ["1104412"] = self.OnSubFailed1104412,
        ["1104413"] = self.OnSubFailed1104413,
        ["1104403"] = self.OnSubFailed1104403
    }
end

function Quest11044:Start()
    print("Start")
end

function Quest11044:OnDestroy()
    print("OnDestroy")
end

function Quest11044:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11044:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11044:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11044:NarratorFind1()
    print("NarratorFind1")
    self:NarratorOnlyTaskByData(datas.NarratorFind1)
end

function Quest11044:NarratorFind2()
    print("NarratorFind2")
    self:NarratorOnlyTaskByData(datas.NarratorFind2)
end

function Quest11044:NarratorFindAll()
    print("NarratorFindAll")
    self:NarratorOnlyTaskByData(datas.NarratorFindAll)
end

function Quest11044:OnSubStart1104406(arg1)
    print("OnSubStart1104406")
    self:CreateQuestNpc(arg1, npcs.Npc2003035Data.id, 1)
end

function Quest11044:OnSubFinish1104406(arg1)
    print("OnSubFinish1104406")
    self:SafeDestroyQuestNpc(npcs.Npc2003035Data.alias, 3)
end

function Quest11044:OnSubFailed1104406(arg1)
    print("OnSubFailed1104406")
end

function Quest11044:OnSubStart1104407(arg1)
    print("OnSubStart1104407")
    self:CreateQuestNpc(arg1, npcs.Npc2003036Data.id, 1)
end

function Quest11044:OnSubFinish1104407(arg1)
    print("OnSubFinish1104407")
    self:SafeDestroyQuestNpc(npcs.Npc2003036Data.alias, 3)
end

function Quest11044:OnSubFailed1104407(arg1)
    print("OnSubFailed1104407")
end

function Quest11044:OnSubStart1104408(arg1)
    print("OnSubStart1104408")
    self:CreateQuestNpc(arg1, npcs.Npc2003037Data.id, 1)
end

function Quest11044:OnSubFinish1104408(arg1)
    print("OnSubFinish1104408")
    self:SafeDestroyQuestNpc(npcs.Npc2003037Data.alias, 3)
end

function Quest11044:OnSubFailed1104408(arg1)
    print("OnSubFailed1104408")
end

function Quest11044:OnSubStart1104409(arg1)
    print("OnSubStart1104409")
end

function Quest11044:OnSubFinish1104409(arg1)
    print("OnSubFinish1104409")
    self:ActionSafeCall(self.NarratorFindAll)
end

function Quest11044:OnSubFailed1104409(arg1)
    print("OnSubFailed1104409")
end

function Quest11044:OnSubStart1104410(arg1)
    print("OnSubStart1104410")
end

function Quest11044:OnSubFinish1104410(arg1)
    print("OnSubFinish1104410")
end

function Quest11044:OnSubFailed1104410(arg1)
    print("OnSubFailed1104410")
end

function Quest11044:OnSubStart1104401(arg1)
    print("OnSubStart1104401")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
end

function Quest11044:OnSubFinish1104401(arg1)
    print("OnSubFinish1104401")
    self:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 11044)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest11044:OnSubFailed1104401(arg1)
    print("OnSubFailed1104401")
end

function Quest11044:OnSubStart1104404(arg1)
    print("OnSubStart1104404")
end

function Quest11044:OnSubFinish1104404(arg1)
    print("OnSubFinish1104404")
end

function Quest11044:OnSubFailed1104404(arg1)
    print("OnSubFailed1104404")
end

function Quest11044:OnSubStart1104414(arg1)
    print("OnSubStart1104414")
end

function Quest11044:OnSubFinish1104414(arg1)
    print("OnSubFinish1104414")
end

function Quest11044:OnSubFailed1104414(arg1)
    print("OnSubFailed1104414")
end

function Quest11044:OnSubStart1104415(arg1)
    print("OnSubStart1104415")
end

function Quest11044:OnSubFinish1104415(arg1)
    print("OnSubFinish1104415")
end

function Quest11044:OnSubFailed1104415(arg1)
    print("OnSubFailed1104415")
end

function Quest11044:OnSubStart1104416(arg1)
    print("OnSubStart1104416")
end

function Quest11044:OnSubFinish1104416(arg1)
    print("OnSubFinish1104416")
end

function Quest11044:OnSubFailed1104416(arg1)
    print("OnSubFailed1104416")
end

function Quest11044:OnSubStart1104405(arg1)
    print("OnSubStart1104405")
end

function Quest11044:OnSubFinish1104405(arg1)
    print("OnSubFinish1104405")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest11044:OnSubFailed1104405(arg1)
    print("OnSubFailed1104405")
end

function Quest11044:OnSubStart1104402(arg1)
    print("OnSubStart1104402")
    self:UnSpawn(gadgets.GadgetFind1.alias)
    self:DelaySpawnGadget(arg1, gadgets.GadgetFind1.id, 1, 0)
end

function Quest11044:OnSubFinish1104402(arg1)
    print("OnSubFinish1104402")
    self:NarratorFind1()
    self:UnSpawn(gadgets.GadgetFind1.alias)
end

function Quest11044:OnSubFailed1104402(arg1)
    print("OnSubFailed1104402")
end

function Quest11044:OnSubStart1104411(arg1)
    print("OnSubStart1104411")
    self:UnSpawn(gadgets.GadgetFind2.alias)
    self:DelaySpawnGadget(arg1, gadgets.GadgetFind2.id, 1, 0)
end

function Quest11044:OnSubFinish1104411(arg1)
    print("OnSubFinish1104411")
    self:NarratorFind2()
    self:UnSpawn(gadgets.GadgetFind2.alias)
end

function Quest11044:OnSubFailed1104411(arg1)
    print("OnSubFailed1104411")
end

function Quest11044:OnSubStart1104412(arg1)
    print("OnSubStart1104412")
end

function Quest11044:OnSubFinish1104412(arg1)
    print("OnSubFinish1104412")
end

function Quest11044:OnSubFailed1104412(arg1)
    print("OnSubFailed1104412")
end

function Quest11044:OnSubStart1104413(arg1)
    print("OnSubStart1104413")
end

function Quest11044:OnSubFinish1104413(arg1)
    print("OnSubFinish1104413")
end

function Quest11044:OnSubFailed1104413(arg1)
    print("OnSubFailed1104413")
end

function Quest11044:OnSubStart1104403(arg1)
    print("OnSubStart1104403")
end

function Quest11044:OnSubFinish1104403(arg1)
    print("OnSubFinish1104403")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)

    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
end

function Quest11044:OnSubFailed1104403(arg1)
    print("OnSubFailed1104403")
end

return Quest11044
