require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23040 = class("Quest23040", QuestActorProxy)
Quest23040.defaultAlias = "Quest23040"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23040:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23040:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2304001"] = self.OnSubStart2304001,
        ["2304002"] = self.OnSubStart2304002,
        ["2304003"] = self.OnSubStart2304003,
        ["2304004"] = self.OnSubStart2304004,
        ["2304005"] = self.OnSubStart2304005,
        ["2304006"] = self.OnSubStart2304006,
        ["2304007"] = self.OnSubStart2304007,
        ["2304008"] = self.OnSubStart2304008,
        ["2304009"] = self.OnSubStart2304009,
        ["2304010"] = self.OnSubStart2304010
    }
end

function Quest23040:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2304001"] = self.OnSubFinish2304001,
        ["2304002"] = self.OnSubFinish2304002,
        ["2304003"] = self.OnSubFinish2304003,
        ["2304004"] = self.OnSubFinish2304004,
        ["2304005"] = self.OnSubFinish2304005,
        ["2304006"] = self.OnSubFinish2304006,
        ["2304007"] = self.OnSubFinish2304007,
        ["2304008"] = self.OnSubFinish2304008,
        ["2304009"] = self.OnSubFinish2304009,
        ["2304010"] = self.OnSubFinish2304010
    }
end

function Quest23040:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23040:Start()
    print("Start")
end

function Quest23040:OnDestroy()
    print("OnDestroy")
end

function Quest23040:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23040:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23040:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc4421Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4420Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4420Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q2304009Trigger", 3, false)
end

function Quest23040:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest23040:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23040:OnSubStart2304001(arg1)
    print("OnSubStart2304001")
end

function Quest23040:OnSubFinish2304001(arg1)
    print("OnSubFinish2304001")
end

function Quest23040:OnSubStart2304002(arg1)
    print("OnSubStart2304002")
    self:CreateQuestNpc(arg1, npcs.Npc4421Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4420Data.alias, 1, true)
end

function Quest23040:OnSubFinish2304002(arg1)
    print("OnSubFinish2304002")
end

function Quest23040:OnSubStart2304003(arg1)
    print("OnSubStart2304003")
    self:DailyNpcSafeHideSelf(npcs.Npc4420Data.alias, 1, true)
end

function Quest23040:OnSubFinish2304003(arg1)
    print("OnSubFinish2304003")
end

function Quest23040:OnSubStart2304004(arg1)
    print("OnSubStart2304004")
    self:DailyNpcSafeHideSelf(npcs.Npc4420Data.alias, 1, true)
end

function Quest23040:OnSubFinish2304004(arg1)
    print("OnSubFinish2304004")
    self:LightNotifyTo(npcs.Npc4420Data.alias, 0, true)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4421Data.alias)
end

function Quest23040:OnSubStart2304005(arg1)
    print("OnSubStart2304005")
    self:CreateQuestNpc(arg1, npcs.Npc4421Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4420Data.alias, 1, true)
end

function Quest23040:OnSubFinish2304005(arg1)
    print("OnSubFinish2304005")
end

function Quest23040:OnSubStart2304006(arg1)
    print("OnSubStart2304006")
    self:DailyNpcSafeHideSelf(npcs.Npc4420Data.alias, 1, true)
end

function Quest23040:OnSubFinish2304006(arg1)
    print("OnSubFinish2304006")
end

function Quest23040:OnSubStart2304007(arg1)
    print("OnSubStart2304007")
    self:DailyNpcSafeHideSelf(npcs.Npc4420Data.alias, 1, true)
end

function Quest23040:OnSubFinish2304007(arg1)
    print("OnSubFinish2304007")
    self:LightNotifyTo(npcs.Npc4420Data.alias, 0, true)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4421Data.alias)
end

function Quest23040:OnSubStart2304008(arg1)
    print("OnSubStart2304008")
    self:CreateQuestNpc(arg1, npcs.Npc4421Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4420Data.alias, 1, true)
end

function Quest23040:OnSubFinish2304008(arg1)
    print("OnSubFinish2304008")
end

function Quest23040:OnSubStart2304009(arg1)
    print("OnSubStart2304009")
    self:DailyNpcSafeHideSelf(npcs.Npc4420Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q2304009Trigger", "Actor/Gadget/Q2304009Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2304009_guide").pos, sceneData:GetDummyPoint(3, "Q2304009_guide").rot, true, false, 3)
end

function Quest23040:OnSubFinish2304009(arg1)
    print("OnSubFinish2304009")
    actorMgr:DestroyEntityActor("Q2304009Trigger", 3, false)
end

function Quest23040:OnSubStart2304010(arg1)
    print("OnSubStart2304010")
    self:DailyNpcSafeHideSelf(npcs.Npc4420Data.alias, 1, true)
    if self:GetQuestVar(2304010, 3) == 1 then
        self:CreateQuestNpc(arg1, npcs.Npc4420Data.id, 1)
    else
        self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc4420Data.id, 1)
            arg1_2:SetQuestVarByMainId(3, 1)
        end, nil, nil, "", false, true)
    end
end

function Quest23040:OnSubFinish2304010(arg1)
    print("OnSubFinish2304010")
    self:SafeDestroyQuestNpc(npcs.Npc4421Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4420Data.alias)
end

return Quest23040
