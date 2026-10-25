require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11023 = class("Quest11023", QuestActorProxy)
Quest11023.defaultAlias = "Quest11023"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest11023:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest11023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1102314"] = self.OnSubStart1102314,
        ["1102301"] = self.OnSubStart1102301,
        ["1102302"] = self.OnSubStart1102302,
        ["1102303"] = self.OnSubStart1102303,
        ["1102304"] = self.OnSubStart1102304,
        ["1102305"] = self.OnSubStart1102305,
        ["1102306"] = self.OnSubStart1102306,
        ["1102307"] = self.OnSubStart1102307,
        ["1102308"] = self.OnSubStart1102308,
        ["1102312"] = self.OnSubStart1102312,
        ["1102309"] = self.OnSubStart1102309,
        ["1102313"] = self.OnSubStart1102313,
        ["1102310"] = self.OnSubStart1102310,
        ["1102311"] = self.OnSubStart1102311
    }
end

function Quest11023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1102301"] = self.OnSubFinish1102301,
        ["1102302"] = self.OnSubFinish1102302,
        ["1102303"] = self.OnSubFinish1102303,
        ["1102304"] = self.OnSubFinish1102304,
        ["1102305"] = self.OnSubFinish1102305,
        ["1102306"] = self.OnSubFinish1102306,
        ["1102307"] = self.OnSubFinish1102307,
        ["1102308"] = self.OnSubFinish1102308,
        ["1102312"] = self.OnSubFinish1102312,
        ["1102309"] = self.OnSubFinish1102309,
        ["1102313"] = self.OnSubFinish1102313,
        ["1102310"] = self.OnSubFinish1102310,
        ["1102311"] = self.OnSubFinish1102311
    }
end

function Quest11023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1102301"] = self.OnSubFailed1102301,
        ["1102302"] = self.OnSubFailed1102302,
        ["1102303"] = self.OnSubFailed1102303,
        ["1102304"] = self.OnSubFailed1102304,
        ["1102305"] = self.OnSubFailed1102305,
        ["1102306"] = self.OnSubFailed1102306,
        ["1102307"] = self.OnSubFailed1102307,
        ["1102308"] = self.OnSubFailed1102308,
        ["1102312"] = self.OnSubFailed1102312,
        ["1102309"] = self.OnSubFailed1102309,
        ["1102313"] = self.OnSubFailed1102313,
        ["1102310"] = self.OnSubFailed1102310,
        ["1102311"] = self.OnSubFailed1102311
    }
end

function Quest11023:Start()
    print("Start")
end

function Quest11023:OnDestroy()
    print("OnDestroy")
end

function Quest11023:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11023:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11023:OnSubStart1102314(arg1)
    print("OnSubStart1102314")
    actorMgr:CreateActorWithPos("Q1102314Trigger", "Actor/Gadget/Q1102314Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q11023Point").pos, sceneData:GetDummyPoint(3, "Q11023Point").rot, true, false, 3)
end

function Quest11023:OnSubStart1102301(arg1)
    print("OnSubStart1102301")
end

function Quest11023:OnSubFinish1102301(arg1)
    print("OnSubFinish1102301")
end

function Quest11023:OnSubFailed1102301(arg1)
    print("OnSubFailed1102301")
end

function Quest11023:OnSubStart1102302(arg1)
    print("OnSubStart1102302")
    actorMgr:CreateActorWithPos("Q1102301Trigger", "Actor/Gadget/Q1102301Trigger", 70900002, 0, sceneData:GetDummyPoint(1056, "EnterNarrator").pos, sceneData:GetDummyPoint(1056, "EnterNarrator").rot, true, false, 1056)
    actorMgr:CreateActorWithPos("Q11023Trigger", "Actor/Gadget/Q11023Trigger", 70900002, 0, sceneData:GetDummyPoint(1056, "SaltBowl").pos, sceneData:GetDummyPoint(1056, "SaltBowl").rot, true, false, 1056)
end

function Quest11023:OnSubFinish1102302(arg1)
    print("OnSubFinish1102302")
end

function Quest11023:OnSubFailed1102302(arg1)
    print("OnSubFailed1102302")
end

function Quest11023:OnSubStart1102303(arg1)
    print("OnSubStart1102303")
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10302Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10303Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc10232Data.alias)
    end)
end

function Quest11023:OnSubFinish1102303(arg1)
    print("OnSubFinish1102303")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc10232Data.alias, 1056)
        arg1:DestroyQuestNpcActor(npcs.Npc10302Data.alias, 1056)
        arg1:DestroyQuestNpcActor(npcs.Npc10303Data.alias, 1056)
        arg1:DestroyQuestNpcActor(npcs.PaimonData.alias, 1056)
    end)
end

function Quest11023:OnSubFailed1102303(arg1)
    print("OnSubFailed1102303")
end

function Quest11023:OnSubStart1102304(arg1)
    print("OnSubStart1102304")
    actorMgr:CreateActorWithPos("Q11023Trigger", "Actor/Gadget/Q11023Trigger", 70900002, 0, sceneData:GetDummyPoint(1056, "SaltRuler").pos, sceneData:GetDummyPoint(1056, "SaltRuler").rot, true, false, 1056)
end

function Quest11023:OnSubFinish1102304(arg1)
    print("OnSubFinish1102304")
end

function Quest11023:OnSubFailed1102304(arg1)
    print("OnSubFailed1102304")
end

function Quest11023:OnSubStart1102305(arg1)
    print("OnSubStart1102305")
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10302Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10303Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc10232Data.alias)
    end)
end

function Quest11023:OnSubFinish1102305(arg1)
    print("OnSubFinish1102305")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc10232Data.alias, 1056)
        arg1:DestroyQuestNpcActor(npcs.Npc10302Data.alias, 1056)
        arg1:DestroyQuestNpcActor(npcs.Npc10303Data.alias, 1056)
        arg1:DestroyQuestNpcActor(npcs.PaimonData.alias, 1056)
    end)
end

function Quest11023:OnSubFailed1102305(arg1)
    print("OnSubFailed1102305")
end

function Quest11023:OnSubStart1102306(arg1)
    print("OnSubStart1102306")
end

function Quest11023:OnSubFinish1102306(arg1)
    print("OnSubFinish1102306")
end

function Quest11023:OnSubFailed1102306(arg1)
    print("OnSubFailed1102306")
end

function Quest11023:OnSubStart1102307(arg1)
    print("OnSubStart1102307")
    self:CallDelay(1.5, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc10302Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc10303Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc10232Data.alias)
        end)
    end)
end

function Quest11023:OnSubFinish1102307(arg1)
    print("OnSubFinish1102307")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc10232Data.alias, 1056)
        arg1:DestroyQuestNpcActor(npcs.Npc10302Data.alias, 1056)
        arg1:DestroyQuestNpcActor(npcs.Npc10303Data.alias, 1056)
        arg1:DestroyQuestNpcActor(npcs.PaimonData.alias, 1056)
    end)
end

function Quest11023:OnSubFailed1102307(arg1)
    print("OnSubFailed1102307")
end

function Quest11023:OnSubStart1102308(arg1)
    print("OnSubStart1102308")
    actorMgr:CreateActorWithPos("Q11023Trigger", "Actor/Gadget/Q11023Trigger", 70900002, 0, sceneData:GetDummyPoint(1056, "BrokenBlade").pos, sceneData:GetDummyPoint(1056, "BrokenBlade").rot, true, false, 1056)
end

function Quest11023:OnSubFinish1102308(arg1)
    print("OnSubFinish1102308")
end

function Quest11023:OnSubFailed1102308(arg1)
    print("OnSubFailed1102308")
end

function Quest11023:OnSubStart1102312(arg1)
    print("OnSubStart1102312")
end

function Quest11023:OnSubFinish1102312(arg1)
    print("OnSubFinish1102312")
end

function Quest11023:OnSubFailed1102312(arg1)
    print("OnSubFailed1102312")
end

function Quest11023:OnSubStart1102309(arg1)
    print("OnSubStart1102309")
    actorMgr:CreateActorWithPos("Q1102309Trigger", "Actor/Gadget/Q1102309Trigger", 70900002, 0, sceneData:GetDummyPoint(1056, "BrokenBlade").pos, sceneData:GetDummyPoint(1056, "BrokenBlade").rot, true, false, 1056)
end

function Quest11023:OnSubFinish1102309(arg1)
    print("OnSubFinish1102309")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc10232Data.alias, 1056)
        arg1:DestroyQuestNpcActor(npcs.PaimonData.alias, 1056)
    end)
end

function Quest11023:OnSubFailed1102309(arg1)
    print("OnSubFailed1102309")
end

function Quest11023:OnSubStart1102313(arg1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1102313)
    end
end

function Quest11023:OnSubFinish1102313(arg1)
    print("OnSubFinish1102313")
end

function Quest11023:OnSubFailed1102313(arg1)
    print("OnSubFailed1102313")
end

function Quest11023:OnSubStart1102310(arg1)
    print("OnSubStart1102310")
    actorMgr:CreateActorWithPos(datas.Q1102310Trigger_.alias, datas.Q1102310Trigger_.script, datas.Q1102310Trigger_.id, 0, datas.Q1102310Trigger_.point.pos, datas.Q1102310Trigger_.point.rot, true, false, 1056)
    self:CreateQuestNpc(arg1, npcs.Npc10303Data.id, 0)
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc10303Data.alias):DoFreeStyle(1240)
    end)
end

function Quest11023:OnSubFinish1102310(arg1)
    print("OnSubFinish1102310")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc10232Data.alias, 1056)
        arg1:DestroyQuestNpcActor(npcs.PaimonData.alias, 1056)
    end)
end

function Quest11023:OnSubFailed1102310(arg1)
    print("OnSubFailed1102310")
end

function Quest11023:OnSubStart1102311(arg1)
    print("OnSubStart1102311")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10303Data.id, 0)
        arg1_2:CallDelay(1, function(arg1)
            arg1:GetQuestNpcActor(npcs.Npc10303Data.alias):DoFreeStyle(1240)
        end)
    end)
end

function Quest11023:OnSubFinish1102311(arg1)
    print("OnSubFinish1102311")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc10232Data.alias, 1056)
        arg1:DestroyQuestNpcActor(npcs.Npc10303Data.alias, 1056)
    end)

    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest11023:OnSubFailed1102311(arg1)
    print("OnSubFailed1102311")
end

function Quest11023:InvokeOnInteraction(arg1)
    if arg1 == 21 then
        print("Now Open Gate1")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1102310)
        end
    elseif arg1 == 31 then
        print("Now Change Name")
        local Q11025ClientConfig = require("Quest/Client/Q11025ClientConfig")
        local actor = actorMgr:GetActor(Q11025ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1102501)
        end
    end
end

return Quest11023
