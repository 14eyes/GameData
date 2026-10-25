require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72663 = class("Quest72663", QuestActorProxy)
Quest72663.defaultAlias = "Quest72663"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72663:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72663:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7266301"] = self.OnSubStart7266301,
        ["7266302"] = self.OnSubStart7266302,
        ["7266305"] = self.OnSubStart7266305,
        ["7266304"] = self.OnSubStart7266304,
        ["7266303"] = self.OnSubStart7266303,
        ["7266306"] = self.OnSubStart7266306
    }
end

function Quest72663:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7266301"] = self.OnSubFinish7266301,
        ["7266302"] = self.OnSubFinish7266302,
        ["7266305"] = self.OnSubFinish7266305,
        ["7266304"] = self.OnSubFinish7266304,
        ["7266303"] = self.OnSubFinish7266303,
        ["7266306"] = self.OnSubFinish7266306
    }
end

function Quest72663:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7266301"] = self.OnSubFailed7266301,
        ["7266302"] = self.OnSubFailed7266302,
        ["7266305"] = self.OnSubFailed7266305,
        ["7266304"] = self.OnSubFailed7266304,
        ["7266303"] = self.OnSubFailed7266303,
        ["7266306"] = self.OnSubFailed7266306
    }
end

function Quest72663:Start()
    print("Start")
end

function Quest72663:OnDestroy()
    print("OnDestroy")
end

function Quest72663:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72663:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72663:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3200Data.alias, 3)
end

function Quest72663:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7266303 then
        actorUtils.FinishQuestID(false, 7266303)
    elseif arg1 == 7266306 then
        actorUtils.FinishQuestID(false, 7266306)
    end
end

function Quest72663:OnSubStart7266301(arg1)
    print("OnSubStart7266301")
    self:CreateQuestNpc(arg1, npcs.Npc3200Data.id, 1)
end

function Quest72663:OnSubFinish7266301(arg1)
    print("OnSubFinish7266301")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3200Data.alias, 3)
        arg1:LightNotifyTo(npcs.Npc3200Data.alias, 1, true)
    end)
end

function Quest72663:OnSubFailed7266301(arg1)
    print("OnSubFailed7266301")
end

function Quest72663:OnSubStart7266302(arg1)
    print("OnSubStart7266302")
    actorMgr:CreateActorWithPos("Q72663Trigger", "Actor/Gadget/Q72663Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q72663_jingjinghua2").pos, sceneData:GetDummyPoint(3, "Q72663_jingjinghua2").rot, true, false, 3)
    self:ActionSafeCall(function(arg1)
        arg1:LightNotifyTo(npcs.Npc3200Data.alias, 1, true)
    end)
end

function Quest72663:OnSubFinish7266302(arg1)
    print("OnSubFinish7266302")
    self:NarratorOnlyTaskLegacy(datas.NarratorTable, nil, "", 72663)
end

function Quest72663:OnSubFailed7266302(arg1)
    print("OnSubFailed7266302")
end

function Quest72663:OnSubStart7266305(arg1)
    print("OnSubStart7266305")
    actorMgr:CreateActorWithPos("Q72663Trigger1", "Actor/Gadget/Q72663Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q72663_jingjinghua2").pos, sceneData:GetDummyPoint(3, "Q72663_jingjinghua2").rot, true, false, 3)
end

function Quest72663:OnSubFinish7266305(arg1)
    print("OnSubFinish7266305")
end

function Quest72663:OnSubFailed7266305(arg1)
    print("OnSubFailed7266305")
end

function Quest72663:OnSubStart7266304(arg1)
    print("OnSubStart7266304")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc3200Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc3200Data.alias)
        end, nil, nil, "", false, false)
    end)
end

function Quest72663:OnSubFinish7266304(arg1)
    print("OnSubFinish7266304")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3200Data.alias, 3)
        actorUtils.ShowMoonfinTrialMainPage(9)
    end)
end

function Quest72663:OnSubFailed7266304(arg1)
    print("OnSubFailed7266304")
end

function Quest72663:OnSubStart7266303(arg1)
    print("OnSubStart7266303")
end

function Quest72663:OnSubFinish7266303(arg1)
    print("OnSubFinish7266303")
end

function Quest72663:OnSubFailed7266303(arg1)
    print("OnSubFailed7266303")
end

function Quest72663:OnSubStart7266306(arg1)
    print("OnSubStart7266306")
end

function Quest72663:OnSubFinish7266306(arg1)
    print("OnSubFinish7266306")
end

function Quest72663:OnSubFailed7266306(arg1)
    print("OnSubFailed7266306")
end

return Quest72663
