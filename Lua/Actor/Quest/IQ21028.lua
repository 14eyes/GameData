require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21028 = class("Quest21028", QuestActorProxy)
Quest21028.defaultAlias = "Quest21028"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest21028:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest21028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2102801"] = self.OnSubStart2102801,
        ["2102802"] = self.OnSubStart2102802,
        ["2102803"] = self.OnSubStart2102803,
        ["2102804"] = self.OnSubStart2102804,
        ["2102805"] = self.OnSubStart2102805
    }
end

function Quest21028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2102801"] = self.OnSubFinish2102801,
        ["2102802"] = self.OnSubFinish2102802,
        ["2102803"] = self.OnSubFinish2102803,
        ["2102804"] = self.OnSubFinish2102804,
        ["2102805"] = self.OnSubFinish2102805
    }
end

function Quest21028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest21028:Start()
    print("Start")
end

function Quest21028:OnDestroy()
    print("OnDestroy")
end

function Quest21028:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc2031Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2103Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2031Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2030Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2074Data.alias, 0, true)
end

function Quest21028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest21028:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc2031Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2103Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2031Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2030Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2074Data.alias, 0, true)
    self:ActorDestroy("Q21028Trigger")
end

function Quest21028:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest21028:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest21028:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest21028:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest21028:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest21028:OnSubStart2102801(arg1)
    print("OnSubStart2102801")
    self:NpcCreate(arg1, npcs.Npc2031Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21028:OnSubFinish2102801(arg1)
    print("OnSubFinish2102801")
    self:ActionSafeCall(function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc2031Data.alias, 3)
    end)
end

function Quest21028:OnSubStart2102802(arg1)
    print("OnSubStart2102802")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc2103Data.id, 2)
        arg1_2:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
        arg1_2:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
        actorMgr:CreateActorWithPos("Q21028Trigger", "Actor/Gadget/Q21028Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2102708_N10000005").pos, sceneData:GetDummyPoint(3, "Q2102708_N10000005").rot, true, false, 3)
        arg1_2:NotifyTo(npcs.Npc2031Data.alias, 1, true)
    end)
end

function Quest21028:OnSubFinish2102802(arg1)
    print("OnSubFinish2102802")
    self:ActorDestroy("Q21028Trigger")
end

function Quest21028:OnSubStart2102803(arg1)
    print("OnSubStart2102803")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc2031Data.id, 1, npcs.Npc2031Data.alias)
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21028:OnSubFinish2102803(arg1)
    print("OnSubFinish2102803")
end

function Quest21028:OnSubStart2102804(arg1)
    print("OnSubStart2102804")
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21028:OnSubFinish2102804(arg1)
    print("OnSubFinish2102804")
end

function Quest21028:OnSubStart2102805(arg1)
    print("OnSubStart2102805")
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc2031Data.alias)
end

function Quest21028:OnSubFinish2102805(arg1)
    print("OnSubFinish2102805")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2031Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2103Data.alias)
end

return Quest21028
