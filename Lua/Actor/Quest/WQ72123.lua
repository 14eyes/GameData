require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72123 = class("Quest72123", QuestActorProxy)
Quest72123.defaultAlias = "Quest72123"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72123:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72123:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7212301"] = self.OnSubStart7212301,
        ["7212302"] = self.OnSubStart7212302,
        ["7212303"] = self.OnSubStart7212303,
        ["7212304"] = self.OnSubStart7212304,
        ["7212305"] = self.OnSubStart7212305,
        ["7212306"] = self.OnSubStart7212306,
        ["7212307"] = self.OnSubStart7212307,
        ["7212308"] = self.OnSubStart7212308,
        ["7212309"] = self.OnSubStart7212309,
        ["7212310"] = self.OnSubStart7212310,
        ["7212311"] = self.OnSubStart7212311,
        ["7212312"] = self.OnSubStart7212312,
        ["7212313"] = self.OnSubStart7212313,
        ["7212314"] = self.OnSubStart7212314,
        ["7212315"] = self.OnSubStart7212315,
        ["7212316"] = self.OnSubStart7212316,
        ["7212317"] = self.OnSubStart7212317,
        ["7212318"] = self.OnSubStart7212318,
        ["7212319"] = self.OnSubStart7212319
    }
end

function Quest72123:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7212301"] = self.OnSubFinish7212301,
        ["7212302"] = self.OnSubFinish7212302,
        ["7212303"] = self.OnSubFinish7212303,
        ["7212304"] = self.OnSubFinish7212304,
        ["7212305"] = self.OnSubFinish7212305,
        ["7212306"] = self.OnSubFinish7212306,
        ["7212307"] = self.OnSubFinish7212307,
        ["7212308"] = self.OnSubFinish7212308,
        ["7212309"] = self.OnSubFinish7212309,
        ["7212310"] = self.OnSubFinish7212310,
        ["7212311"] = self.OnSubFinish7212311,
        ["7212312"] = self.OnSubFinish7212312,
        ["7212313"] = self.OnSubFinish7212313,
        ["7212314"] = self.OnSubFinish7212314,
        ["7212315"] = self.OnSubFinish7212315,
        ["7212316"] = self.OnSubFinish7212316,
        ["7212317"] = self.OnSubFinish7212317,
        ["7212318"] = self.OnSubFinish7212318,
        ["7212319"] = self.OnSubFinish7212319
    }
end

function Quest72123:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7212301"] = self.OnSubFailed7212301,
        ["7212302"] = self.OnSubFailed7212302,
        ["7212303"] = self.OnSubFailed7212303,
        ["7212304"] = self.OnSubFailed7212304,
        ["7212305"] = self.OnSubFailed7212305,
        ["7212306"] = self.OnSubFailed7212306,
        ["7212307"] = self.OnSubFailed7212307,
        ["7212308"] = self.OnSubFailed7212308,
        ["7212309"] = self.OnSubFailed7212309,
        ["7212310"] = self.OnSubFailed7212310,
        ["7212311"] = self.OnSubFailed7212311,
        ["7212312"] = self.OnSubFailed7212312,
        ["7212313"] = self.OnSubFailed7212313,
        ["7212314"] = self.OnSubFailed7212314,
        ["7212315"] = self.OnSubFailed7212315,
        ["7212316"] = self.OnSubFailed7212316,
        ["7212317"] = self.OnSubFailed7212317,
        ["7212318"] = self.OnSubFailed7212318,
        ["7212319"] = self.OnSubFailed7212319
    }
end

function Quest72123:Start()
    print("Start")
end

function Quest72123:OnDestroy()
    print("OnDestroy")
end

function Quest72123:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72123:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72123:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72123:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72123:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72123:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72123:OnSubStart7212301(arg1)
    print("OnSubStart7212301")
end

function Quest72123:OnSubFinish7212301(arg1)
    print("OnSubFinish7212301")
end

function Quest72123:OnSubFailed7212301(arg1)
    print("OnSubFailed7212301")
end

function Quest72123:OnSubStart7212302(arg1)
    print("OnSubStart7212302")
end

function Quest72123:OnSubFinish7212302(arg1)
    print("OnSubFinish7212302")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3163Data.id, 1)
end

function Quest72123:OnSubFailed7212302(arg1)
    print("OnSubFailed7212302")
end

function Quest72123:OnSubStart7212303(arg1)
    print("OnSubStart7212303")
end

function Quest72123:OnSubFinish7212303(arg1)
    print("OnSubFinish7212303")
end

function Quest72123:OnSubFailed7212303(arg1)
    print("OnSubFailed7212303")
end

function Quest72123:OnSubStart7212304(arg1)
    print("OnSubStart7212304")
end

function Quest72123:OnSubFinish7212304(arg1)
    print("OnSubFinish7212304")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72123:OnSubFailed7212304(arg1)
    print("OnSubFailed7212304")
end

function Quest72123:OnSubStart7212305(arg1)
    print("OnSubStart7212305")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CallDelay(0.8, function(arg1_2)
            arg1_2:NpcCreate(arg1, npcs.Npc20244Data.id, 1)
            arg1_2:GetQuestNpcActor(npcs.Npc20244Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
        end)
    end)
end

function Quest72123:OnSubFinish7212305(arg1)
    print("OnSubFinish7212305")
    self:ShowBlackScreen(0.5, 2, 0.5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20244Data.alias):DestroyWithDisappear(false)
    end, nil, nil, "QUEST_Message_Q7212301", false, true)
end

function Quest72123:OnSubFailed7212305(arg1)
    print("OnSubFailed7212305")
end

function Quest72123:OnSubStart7212306(arg1)
    print("OnSubStart7212306")
end

function Quest72123:OnSubFinish7212306(arg1)
    print("OnSubFinish7212306")
end

function Quest72123:OnSubFailed7212306(arg1)
    print("OnSubFailed7212306")
end

function Quest72123:OnSubStart7212307(arg1)
    print("OnSubStart7212307")
end

function Quest72123:OnSubFinish7212307(arg1)
    print("OnSubFinish7212307")
end

function Quest72123:OnSubFailed7212307(arg1)
    print("OnSubFailed7212307")
end

function Quest72123:OnSubStart7212308(arg1)
    print("OnSubStart7212308")
end

function Quest72123:OnSubFinish7212308(arg1)
    print("OnSubFinish7212308")
end

function Quest72123:OnSubFailed7212308(arg1)
    print("OnSubFailed7212308")
end

function Quest72123:OnSubStart7212309(arg1)
    print("OnSubStart7212309")
end

function Quest72123:OnSubFinish7212309(arg1)
    print("OnSubFinish7212309")
end

function Quest72123:OnSubFailed7212309(arg1)
    print("OnSubFailed7212309")
end

function Quest72123:OnSubStart7212310(arg1)
    print("OnSubStart7212310")
end

function Quest72123:OnSubFinish7212310(arg1)
    print("OnSubFinish7212310")
end

function Quest72123:OnSubFailed7212310(arg1)
    print("OnSubFailed7212310")
end

function Quest72123:OnSubStart7212311(arg1)
    print("OnSubStart7212311")
end

function Quest72123:OnSubFinish7212311(arg1)
    print("OnSubFinish7212311")
end

function Quest72123:OnSubFailed7212311(arg1)
    print("OnSubFailed7212311")
end

function Quest72123:OnSubStart7212312(arg1)
    print("OnSubStart7212312")
end

function Quest72123:OnSubFinish7212312(arg1)
    print("OnSubFinish7212312")
end

function Quest72123:OnSubFailed7212312(arg1)
    print("OnSubFailed7212312")
end

function Quest72123:OnSubStart7212313(arg1)
    print("OnSubStart7212313")
end

function Quest72123:OnSubFinish7212313(arg1)
    print("OnSubFinish7212313")
end

function Quest72123:OnSubFailed7212313(arg1)
    print("OnSubFailed7212313")
end

function Quest72123:OnSubStart7212314(arg1)
    print("OnSubStart7212314")
end

function Quest72123:OnSubFinish7212314(arg1)
    print("OnSubFinish7212314")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72123:OnSubFailed7212314(arg1)
    print("OnSubFailed7212314")
end

function Quest72123:OnSubStart7212315(arg1)
    print("OnSubStart7212315")
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3163Data.id, 1)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20244Data.id, 2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20241Data.id, 3)
        arg1_2:GetQuestNpcActor(npcs.Npc20244Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    end)
end

function Quest72123:OnSubFinish7212315(arg1)
    print("OnSubFinish7212315")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3163Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20244Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20241Data.alias)
end

function Quest72123:OnSubFailed7212315(arg1)
    print("OnSubFailed7212315")
end

function Quest72123:OnSubStart7212316(arg1)
    print("OnSubStart7212316")
    self:NotifyTo(npcs.Npc3163Data.alias, 1, true)
end

function Quest72123:OnSubFinish7212316(arg1)
    print("OnSubFinish7212316")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72123:OnSubFailed7212316(arg1)
    print("OnSubFailed7212316")
end

function Quest72123:OnSubStart7212317(arg1)
    print("OnSubStart7212317")
    self:CallDelay(0, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc20244Data.id, 2)
        arg1_2:GetQuestNpcActor(npcs.Npc20244Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3163Data.id, 1)
    end)
end

function Quest72123:OnSubFinish7212317(arg1)
    print("OnSubFinish7212317")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3163Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20244Data.alias)
end

function Quest72123:OnSubFailed7212317(arg1)
    print("OnSubFailed7212317")
end

function Quest72123:OnSubStart7212318(arg1)
    print("OnSubStart7212318")
    self:NotifyTo(npcs.Npc3163Data.alias, 1, true)
end

function Quest72123:OnSubFinish7212318(arg1)
    print("OnSubFinish7212318")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72123:OnSubFailed7212318(arg1)
    print("OnSubFailed7212318")
end

function Quest72123:OnSubStart7212319(arg1)
    print("OnSubStart7212319")
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3163Data.id, 1)
        arg1_2:NpcCreate(arg1, npcs.Npc20244Data.id, 2)
        arg1_2:GetQuestNpcActor(npcs.Npc20244Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
    end)
end

function Quest72123:OnSubFinish7212319(arg1)
    print("OnSubFinish7212319")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3163Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20244Data.alias)
end

function Quest72123:OnSubFailed7212319(arg1)
    print("OnSubFailed7212319")
end

return Quest72123
