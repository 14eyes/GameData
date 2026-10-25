require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40081 = class("Quest40081", QuestActorProxy)
Quest40081.defaultAlias = "Quest40081"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40081:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40081:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4008101"] = self.OnSubStart4008101,
        ["4008123"] = self.OnSubStart4008123,
        ["4008103"] = self.OnSubStart4008103,
        ["4008115"] = self.OnSubStart4008115,
        ["4008109"] = self.OnSubStart4008109,
        ["4008104"] = self.OnSubStart4008104,
        ["4008105"] = self.OnSubStart4008105,
        ["4008106"] = self.OnSubStart4008106,
        ["4008114"] = self.OnSubStart4008114,
        ["4008107"] = self.OnSubStart4008107,
        ["4008108"] = self.OnSubStart4008108,
        ["4008110"] = self.OnSubStart4008110,
        ["4008111"] = self.OnSubStart4008111,
        ["4008112"] = self.OnSubStart4008112,
        ["4008113"] = self.OnSubStart4008113,
        ["4008116"] = self.OnSubStart4008116,
        ["4008117"] = self.OnSubStart4008117,
        ["4008118"] = self.OnSubStart4008118,
        ["4008119"] = self.OnSubStart4008119,
        ["4008120"] = self.OnSubStart4008120,
        ["4008121"] = self.OnSubStart4008121,
        ["4008122"] = self.OnSubStart4008122,
        ["4008102"] = self.OnSubStart4008102
    }
end

function Quest40081:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4008101"] = self.OnSubFinish4008101,
        ["4008123"] = self.OnSubFinish4008123,
        ["4008103"] = self.OnSubFinish4008103,
        ["4008115"] = self.OnSubFinish4008115,
        ["4008109"] = self.OnSubFinish4008109,
        ["4008104"] = self.OnSubFinish4008104,
        ["4008105"] = self.OnSubFinish4008105,
        ["4008106"] = self.OnSubFinish4008106,
        ["4008114"] = self.OnSubFinish4008114,
        ["4008107"] = self.OnSubFinish4008107,
        ["4008108"] = self.OnSubFinish4008108,
        ["4008110"] = self.OnSubFinish4008110,
        ["4008111"] = self.OnSubFinish4008111,
        ["4008112"] = self.OnSubFinish4008112,
        ["4008113"] = self.OnSubFinish4008113,
        ["4008116"] = self.OnSubFinish4008116,
        ["4008117"] = self.OnSubFinish4008117,
        ["4008118"] = self.OnSubFinish4008118,
        ["4008119"] = self.OnSubFinish4008119,
        ["4008120"] = self.OnSubFinish4008120,
        ["4008121"] = self.OnSubFinish4008121,
        ["4008122"] = self.OnSubFinish4008122,
        ["4008102"] = self.OnSubFinish4008102
    }
end

function Quest40081:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4008106"] = self.OnSubFailed4008106}
end

function Quest40081:Start()
    print("Start")
end

function Quest40081:OnDestroy()
    print("OnDestroy")
end

function Quest40081:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40081:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40081:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1063Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12855Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12857Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12856Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12859Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30253Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30255Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30256Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30258Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12861Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12858Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc13075Data.alias, 3)
    actorMgr:DestroyEntityActor("Q4008101Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008104Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008105Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008106Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008107Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008108Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008111Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008122Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008101N1005Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008103Trigger12857", 3, false)
    actorMgr:DestroyEntityActor("Q4008109Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008110Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008114Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008115Trigger", 3, false)
end

function Quest40081:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest40081:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest40081:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    self:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest40081:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40081:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest40081:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest40081:OnSubStart4008101(arg1)
    print("OnSubStart4008101")
    self:NpcCreateWithTriggerBlack(npcs.PaimonData.id, 4008101, 0)
    actorMgr:CreateActorWithPos("Q4008101Trigger", "Actor/Gadget/Q4008101Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008101_guide").pos, sceneData:GetDummyPoint(3, "Q4008101_guide").rot, true, false, 3)
end

function Quest40081:OnSubFinish4008101(arg1)
    print("OnSubFinish4008101")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:ActorDestroy("Q4008101Trigger")
end

function Quest40081:OnSubStart4008123(arg1)
    print("OnSubStart4008123")
end

function Quest40081:OnSubFinish4008123(arg1)
    print("OnSubFinish4008123")
    self:NarratorOnlyTaskByData(datas.NarratorWithId01, nil, 40081)
end

function Quest40081:OnSubStart4008103(arg1)
    print("OnSubStart4008103")
    self:CreateQuestNpc(arg1, npcs.Npc13075Data.id, 0)
    self:CreateQuestNpcWithTrigger("Q4008103Trigger12857", 4008103, npcs.Npc12857Data.id, 0, 10)
    self:CreateQuestNpc(arg1, npcs.Npc12855Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12856Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc30255Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc30256Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc30258Data.id, 0)
end

function Quest40081:OnSubFinish4008103(arg1)
    print("OnSubFinish4008103")
    self:SafeDestroyQuestNpc(npcs.Npc12857Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12856Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30255Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30256Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30258Data.alias, 3)
end

function Quest40081:OnSubStart4008115(arg1)
    print("OnSubStart4008115")
    self:CreateQuestNpcWithTrigger("Q4008115Trigger", 4008115, npcs.Npc12855Data.id, 0, 5)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12858Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12861Data.id, 0)
end

function Quest40081:OnSubFinish4008115(arg1)
    print("OnSubFinish4008115")
    self:NpcDestroy(npcs.Npc12855Data.alias, 3)
    self:NpcDestroy(npcs.Npc13075Data.alias, 3)
    self:NpcDestroy(npcs.Npc12858Data.alias, 3)
    self:NpcDestroy(npcs.Npc12861Data.alias, 3)
    self:TransmitPlayerWithTextByQuestId(4008115, 2, datas.TextmapId01, 3)
end

function Quest40081:OnSubStart4008109(arg1)
    print("OnSubStart4008109")
    self:CreateQuestNpcWithTriggerBlack("Q4008109Trigger", 4008109, npcs.Npc12855Data.id, 0, 20, 0.5)
end

function Quest40081:OnSubFinish4008109(arg1)
    print("OnSubFinish4008109")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12855Data.alias)
end

function Quest40081:OnSubStart4008104(arg1)
    print("OnSubStart4008104")
    actorMgr:CreateActorWithPos("Q4008104Trigger", "Actor/Gadget/Q4008104Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008105_guide").pos, sceneData:GetDummyPoint(3, "Q4008105_guide").rot, true, false, 3)
end

function Quest40081:OnSubFinish4008104(arg1)
    print("OnSubFinish4008104")
    self:ActorDestroy("Q4008104Trigger")
    self:ShowTutorialDialog(1251)
end

function Quest40081:OnSubStart4008105(arg1)
    print("OnSubStart4008105")
    actorMgr:CreateActorWithPos("Q4008105Trigger", "Actor/Gadget/Q4008105Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008105_guide").pos, sceneData:GetDummyPoint(3, "Q4008105_guide").rot, true, false, 3)
end

function Quest40081:OnSubFinish4008105(arg1)
    print("OnSubFinish4008105")
    self:ActorDestroy("Q4008105Trigger")
end

function Quest40081:OnSubStart4008106(arg1)
    print("OnSubStart4008106")
    actorMgr:CreateActorWithPos("Q4008106Trigger", "Actor/Gadget/Q4008106Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008105_guide").pos, sceneData:GetDummyPoint(3, "Q4008105_guide").rot, true, false, 3)
end

function Quest40081:OnSubFinish4008106(arg1)
    print("OnSubFinish4008106")
    self:ActorDestroy("Q4008106Trigger")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:AfterMainPageActiveSafeCall(function(arg1_2)
            arg1_2:TransmitPlayerById(arg1, 3)
        end)
    end)
end

function Quest40081:OnSubFailed4008106(arg1)
    print("OnSubFailed4008106")
    self:ActorDestroy("Q4008106Trigger")
end

function Quest40081:OnSubStart4008114(arg1)
    print("OnSubStart4008114")
    self:ActionSafeCall(function(arg1)
        arg1:AfterMainPageActiveSafeCall(function(arg1)
            arg1:CreateQuestNpcWithTriggerBlack("Q4008114Trigger", 4008114, npcs.PaimonData.id, 0, 25, 0.5)
        end)
    end)
end

function Quest40081:OnSubFinish4008114(arg1)
    print("OnSubFinish4008114")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12855Data.alias)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest40081:OnSubStart4008107(arg1)
    print("OnSubStart4008107")
    actorMgr:CreateActorWithPos("Q4008107Trigger", "Actor/Gadget/Q4008107Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008107_guide").pos, sceneData:GetDummyPoint(3, "Q4008107_guide").rot, true, false, 3)
end

function Quest40081:OnSubFinish4008107(arg1)
    print("OnSubFinish4008107")
    self:ActorDestroy("Q4008107Trigger")
end

function Quest40081:OnSubStart4008108(arg1)
    print("OnSubStart4008108")
    actorMgr:CreateActorWithPos("Q4008108Trigger", "Actor/Gadget/Q4008108Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008107_guide").pos, sceneData:GetDummyPoint(3, "Q4008107_guide").rot, true, false, 3)
end

function Quest40081:OnSubFinish4008108(arg1)
    print("OnSubFinish4008108")
    self:ActorDestroy("Q4008108Trigger")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:AfterMainPageActiveSafeCall(function(arg1_2)
            arg1_2:TransmitPlayerById(arg1, 4)
        end)
    end)
end

function Quest40081:OnSubStart4008110(arg1)
    print("OnSubStart4008110")
    self:ActionSafeCall(function(arg1)
        arg1:AfterMainPageActiveSafeCall(function(arg1)
            arg1:CreateQuestNpcWithTriggerBlack("Q4008110Trigger", 4008110, 1063, 0, 25, 0.5)
        end)
    end)
end

function Quest40081:OnSubFinish4008110(arg1)
    print("OnSubFinish4008110")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1063Data.alias)
end

function Quest40081:OnSubStart4008111(arg1)
    print("OnSubStart4008111")
    actorMgr:CreateActorWithPos("Q4008111Trigger", "Actor/Gadget/Q4008111Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008111_guide").pos, sceneData:GetDummyPoint(3, "Q4008111_guide").rot, true, false, 3)
end

function Quest40081:OnSubFinish4008111(arg1)
    print("OnSubFinish4008111")
    self:ActorDestroy("Q4008111Trigger")
end

function Quest40081:OnSubStart4008112(arg1)
    print("OnSubStart4008112")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1034Data.id, 0, npcs.Npc1034Data.alias)
end

function Quest40081:OnSubFinish4008112(arg1)
    print("OnSubFinish4008112")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1034Data.alias)
end

function Quest40081:OnSubStart4008113(arg1)
    print("OnSubStart4008113")
    self:CreateQuestNpc(arg1, npcs.Npc30253Data.id, 0)
end

function Quest40081:OnSubFinish4008113(arg1)
    print("OnSubFinish4008113")
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(1252)
    end)
end

function Quest40081:OnSubStart4008116(arg1)
    print("OnSubStart4008116")
end

function Quest40081:OnSubFinish4008116(arg1)
    print("OnSubFinish4008116")
end

function Quest40081:OnSubStart4008117(arg1)
    print("OnSubStart4008117")
end

function Quest40081:OnSubFinish4008117(arg1)
    print("OnSubFinish4008117")
end

function Quest40081:OnSubStart4008118(arg1)
    print("OnSubStart4008118")
end

function Quest40081:OnSubFinish4008118(arg1)
    print("OnSubFinish4008118")
end

function Quest40081:OnSubStart4008119(arg1)
    print("OnSubStart4008119")
end

function Quest40081:OnSubFinish4008119(arg1)
    print("OnSubFinish4008119")
end

function Quest40081:OnSubStart4008120(arg1)
    print("OnSubStart4008120")
end

function Quest40081:OnSubFinish4008120(arg1)
    print("OnSubFinish4008120")
end

function Quest40081:OnSubStart4008121(arg1)
    print("OnSubStart4008121")
end

function Quest40081:OnSubFinish4008121(arg1)
    print("OnSubFinish4008121")
    self:AfterMainPageActiveSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId03, nil, 40081)
        arg1:NpcDestroyWithBlackscreen(3, npcs.Npc30253Data.alias)
    end)
end

function Quest40081:OnSubStart4008122(arg1)
    print("OnSubStart4008122")
    actorMgr:CreateActorWithPos("Q4008122Trigger", "Actor/Gadget/Q4008122Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008122_guide").pos, sceneData:GetDummyPoint(3, "Q4008122_guide").rot, true, false, 3)
end

function Quest40081:OnSubFinish4008122(arg1)
    print("OnSubFinish4008122")
    self:ActorDestroy("Q4008122Trigger")
end

function Quest40081:OnSubStart4008102(arg1)
    print("OnSubStart4008102")
end

function Quest40081:OnSubFinish4008102(arg1)
    print("OnSubFinish4008102")
end

return Quest40081
