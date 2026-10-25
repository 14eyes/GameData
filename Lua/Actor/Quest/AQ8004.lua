require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8004 = class("Quest8004", QuestActorProxy)
Quest8004.defaultAlias = "Quest8004"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest8004:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest8004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["800401"] = self.OnSubStart800401,
        ["800402"] = self.OnSubStart800402,
        ["800407"] = self.OnSubStart800407,
        ["800406"] = self.OnSubStart800406,
        ["800403"] = self.OnSubStart800403,
        ["800405"] = self.OnSubStart800405,
        ["800404"] = self.OnSubStart800404
    }
end

function Quest8004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["800401"] = self.OnSubFinish800401,
        ["800402"] = self.OnSubFinish800402,
        ["800407"] = self.OnSubFinish800407,
        ["800406"] = self.OnSubFinish800406,
        ["800403"] = self.OnSubFinish800403,
        ["800405"] = self.OnSubFinish800405,
        ["800404"] = self.OnSubFinish800404
    }
end

function Quest8004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["800403"] = self.OnSubFailed800403}
end

function Quest8004:Start()
    print("Start")
end

function Quest8004:OnDestroy()
    print("OnDestroy")
end

function Quest8004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8004:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc2078Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12423Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12427Data.alias, 6)
    actorMgr:DestroyEntityActor("Q800403_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q800404_TriggerIn", 3, false)
end

function Quest8004:OnSubStart800401(arg1)
    print("OnSubStart800401")
    self:CreateQuestNpc(arg1, npcs.Npc2078Data.id, 1)
end

function Quest8004:OnSubFinish800401(arg1)
    print("OnSubFinish800401")
    self:SafeDestroyQuestNpc(npcs.Npc2078Data.alias, 3)
end

function Quest8004:OnSubStart800402(arg1)
    print("OnSubStart800402")
    self:CreateQuestNpc(arg1, npcs.Npc12423Data.id, 1)
end

function Quest8004:OnSubFinish800402(arg1)
    print("OnSubFinish800402")
end

function Quest8004:OnSubStart800407(arg1)
    print("OnSubStart800407")
end

function Quest8004:OnSubFinish800407(arg1)
    print("OnSubFinish800407")
    self:SafeDestroyQuestNpc(npcs.Npc12423Data.alias, 3)
end

function Quest8004:OnSubStart800406(arg1)
    print("OnSubStart800406")
end

function Quest8004:OnSubFinish800406(arg1)
    print("OnSubFinish800406")
end

function Quest8004:OnSubStart800403(arg1)
    print("OnSubStart800403")
    self:CreateQuestNpc(arg1, npcs.Npc12427Data.id, 2)
    actorMgr:CreateActorWithPos("Q800403_TriggerIn", "Actor/Gadget/Q800403_TriggerIn", 70900002, 0, sceneData:GetDummyPoint(6, "Q800403_guide_Door").pos, sceneData:GetDummyPoint(6, "Q800403_guide_Door").rot, true, false, 6)
    actorMgr:CreateActorWithPos("Q800404_TriggerIn", "Actor/Gadget/Q800404_TriggerIn", 70900002, 0, {x = 394.7007, y = 451.1979, z = 408.9778}, {x = 0, y = 0, z = 0}, true, false, 6)
end

function Quest8004:OnSubFinish800403(arg1)
    print("OnSubFinish800403")
    self:SafeDestroyQuestNpc(npcs.Npc12427Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
    actorMgr:DestroyEntityActor(datas.Q800403_TriggerIn.alias, 6, false)
    actorMgr:DestroyEntityActor(datas.Q800404_TriggerIn.alias, 6, false)
end

function Quest8004:OnSubFailed800403(arg1)
    print("OnSubFailed800403")
    actorMgr:DestroyEntityActor(datas.Q800403_TriggerIn.alias, 6, false)
    actorMgr:DestroyEntityActor(datas.Q800404_TriggerIn.alias, 6, false)
end

function Quest8004:OnSubStart800405(arg1)
    print("OnSubStart800405")
end

function Quest8004:OnSubFinish800405(arg1)
    print("OnSubFinish800405")
end

function Quest8004:OnSubStart800404(arg1)
    print("OnSubStart800404")
    self:CreateQuestNpc(arg1, npcs.Npc12427Data.id, 2)
    actorMgr:CreateActorWithPos("Q800404_TriggerIn", "Actor/Gadget/Q800404_TriggerIn", 70900002, 0, {x = 394.7007, y = 451.1979, z = 408.9778}, {x = 0, y = 0, z = 0}, true, false, 6)
end

function Quest8004:OnSubFinish800404(arg1)
    print("OnSubFinish800404")
    self:SafeDestroyQuestNpc(npcs.Npc12427Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
end

return Quest8004
