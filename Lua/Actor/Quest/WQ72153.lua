require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72153 = class("Quest72153", QuestActorProxy)
Quest72153.defaultAlias = "Quest72153"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72153:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72153:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7215301"] = self.OnSubStart7215301,
        ["7215302"] = self.OnSubStart7215302,
        ["7215303"] = self.OnSubStart7215303,
        ["7215304"] = self.OnSubStart7215304,
        ["7215305"] = self.OnSubStart7215305,
        ["7215306"] = self.OnSubStart7215306,
        ["7215307"] = self.OnSubStart7215307,
        ["7215308"] = self.OnSubStart7215308,
        ["7215309"] = self.OnSubStart7215309,
        ["7215310"] = self.OnSubStart7215310,
        ["7215311"] = self.OnSubStart7215311,
        ["7215312"] = self.OnSubStart7215312,
        ["7215313"] = self.OnSubStart7215313,
        ["7215314"] = self.OnSubStart7215314,
        ["7215315"] = self.OnSubStart7215315,
        ["7215316"] = self.OnSubStart7215316
    }
end

function Quest72153:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7215301"] = self.OnSubFinish7215301,
        ["7215302"] = self.OnSubFinish7215302,
        ["7215303"] = self.OnSubFinish7215303,
        ["7215304"] = self.OnSubFinish7215304,
        ["7215305"] = self.OnSubFinish7215305,
        ["7215306"] = self.OnSubFinish7215306,
        ["7215307"] = self.OnSubFinish7215307,
        ["7215308"] = self.OnSubFinish7215308,
        ["7215309"] = self.OnSubFinish7215309,
        ["7215310"] = self.OnSubFinish7215310,
        ["7215311"] = self.OnSubFinish7215311,
        ["7215312"] = self.OnSubFinish7215312,
        ["7215313"] = self.OnSubFinish7215313,
        ["7215314"] = self.OnSubFinish7215314,
        ["7215315"] = self.OnSubFinish7215315,
        ["7215316"] = self.OnSubFinish7215316
    }
end

function Quest72153:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7215301"] = self.OnSubFailed7215301,
        ["7215302"] = self.OnSubFailed7215302,
        ["7215303"] = self.OnSubFailed7215303,
        ["7215304"] = self.OnSubFailed7215304,
        ["7215305"] = self.OnSubFailed7215305,
        ["7215306"] = self.OnSubFailed7215306,
        ["7215307"] = self.OnSubFailed7215307,
        ["7215308"] = self.OnSubFailed7215308,
        ["7215309"] = self.OnSubFailed7215309,
        ["7215310"] = self.OnSubFailed7215310,
        ["7215311"] = self.OnSubFailed7215311,
        ["7215312"] = self.OnSubFailed7215312,
        ["7215313"] = self.OnSubFailed7215313,
        ["7215314"] = self.OnSubFailed7215314,
        ["7215315"] = self.OnSubFailed7215315,
        ["7215316"] = self.OnSubFailed7215316
    }
end

function Quest72153:Start()
    print("Start")
end

function Quest72153:OnDestroy()
    print("OnDestroy")
end

function Quest72153:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72153:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72153:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72153:OnSubStart7215301(arg1)
    print("OnSubStart7215301")
    this:CreateQuestNpc(arg1, npcs.NPC20088Data.id, 0)
end

function Quest72153:OnSubFinish7215301(arg1)
    print("OnSubFinish7215301")
end

function Quest72153:OnSubFailed7215301(arg1)
    print("OnSubFailed7215301")
end

function Quest72153:OnSubStart7215302(arg1)
    print("OnSubStart7215302")
    local questNpcActor = this:GetQuestNpcActor(npcs.NPC20088Data.alias, 72153)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.Walk1, 5, 3, 0, function(arg1)
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        actorUtils.FinishQuestID(false, 7215302)
    end, nil, nil, nil, nil, nil, true)

    this:CallDelay(1, function(arg1)
        if arg1:GetQuestVar(7215302, 0) == 0 then
            this:NarratorOnlyTaskLegacy(datas.Kaiche11, nil, "", 72153)
            this:SetQuestVarByMainId(0, 1)
        end
    end)
end

function Quest72153:OnSubFinish7215302(arg1)
    print("OnSubFinish7215302")
    this:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q72153photo3").pos, 0, 2, true, false)
end

function Quest72153:OnSubFailed7215302(arg1)
    print("OnSubFailed7215302")
end

function Quest72153:OnSubStart7215303(arg1)
    print("OnSubStart7215303")
    this:GetQuestNpcActor(npcs.NPC20088Data.alias):TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q72153_ailani2").rot))
end

function Quest72153:OnSubFinish7215303(arg1)
    print("OnSubFinish7215303")
end

function Quest72153:OnSubFailed7215303(arg1)
    print("OnSubFailed7215303")
end

function Quest72153:OnSubStart7215304(arg1)
    print("OnSubStart7215304")
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc3082Data.id, 0)
        this:RequestInteraction(npcs.Npc3082Data.alias)
    end, nil, nil, "", false, false)
end

function Quest72153:OnSubFinish7215304(arg1)
    print("OnSubFinish7215304")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc3082Data.alias, 3)
    end)
end

function Quest72153:OnSubFailed7215304(arg1)
    print("OnSubFailed7215304")
end

function Quest72153:OnSubStart7215305(arg1)
    print("OnSubStart7215305")
    this:ActionSafeCall(function(arg1_2)
        local questNpcActor = this:GetQuestNpcActor(npcs.NPC20088Data.alias, 72153)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.Walk2, 5, 3, 0, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            actorUtils.FinishQuestID(false, 7215305)
        end, nil, nil, nil, nil, nil, true)

        this:CreateQuestNpc(arg1, npcs.Npc3080Data.id, 0)
        this:CallDelay(1, function(arg1)
            if arg1:GetQuestVar(7215302, 1) == 0 then
                this:NarratorOnlyTaskLegacy(datas.Kaiche22, nil, "", 72153)
                this:SetQuestVarByMainId(1, 1)
            end
        end)
    end)
end

function Quest72153:OnSubFinish7215305(arg1)
    print("OnSubFinish7215305")
    this:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q72153photo8").pos, 0, 2, false, false)
end

function Quest72153:OnSubFailed7215305(arg1)
    print("OnSubFailed7215305")
end

function Quest72153:OnSubStart7215306(arg1)
    print("OnSubStart7215306")
end

function Quest72153:OnSubFinish7215306(arg1)
    print("OnSubFinish7215306")
end

function Quest72153:OnSubFailed7215306(arg1)
    print("OnSubFailed7215306")
end

function Quest72153:OnSubStart7215307(arg1)
    print("OnSubStart7215307")
    this:RequestInteraction(npcs.Npc3080Data.alias)
end

function Quest72153:OnSubFinish7215307(arg1)
    print("OnSubFinish7215307")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc3080Data.alias, 3)
    end)
end

function Quest72153:OnSubFailed7215307(arg1)
    print("OnSubFailed7215307")
end

function Quest72153:OnSubStart7215308(arg1)
    print("OnSubStart7215308")
    this:CreateQuestNpc(arg1, npcs.Npc3077Data.id, 1)
    local questNpcActor = this:GetQuestNpcActor(npcs.NPC20088Data.alias, 72153)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.Walk3, 3, 5, 0, function(arg1)
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        actorUtils.FinishQuestID(false, 7215308)
    end, nil, nil, nil, nil, nil, false)

    this:CallDelay(1, function(arg1)
        if arg1:GetQuestVar(7215308, 2) == 0 then
            this:NarratorOnlyTaskLegacy(datas.Kaiche33, nil, "", 72153)
            this:SetQuestVarByMainId(2, 1)
        end
    end)
end

function Quest72153:OnSubFinish7215308(arg1)
    print("OnSubFinish7215308")
end

function Quest72153:OnSubFailed7215308(arg1)
    print("OnSubFailed7215308")
end

function Quest72153:OnSubStart7215309(arg1)
    print("OnSubStart7215309")
end

function Quest72153:OnSubFinish7215309(arg1)
    print("OnSubFinish7215309")
    this:SafeDestroyQuestNpc(npcs.Npc3080Data.alias, 3)
end

function Quest72153:OnSubFailed7215309(arg1)
    print("OnSubFailed7215309")
end

function Quest72153:OnSubStart7215310(arg1)
    print("OnSubStart7215310")
    this:RequestInteraction(npcs.Npc3077Data.alias)
end

function Quest72153:OnSubFinish7215310(arg1)
    print("OnSubFinish7215310")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.NPC20088Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc3077Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc3080Data.alias, 3)
    end)
end

function Quest72153:OnSubFailed7215310(arg1)
    print("OnSubFailed7215310")
end

function Quest72153:OnSubStart7215311(arg1)
    print("OnSubStart7215311")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.NPC20088Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc3080Data.id, 0)
    end)
end

function Quest72153:OnSubFinish7215311(arg1)
    print("OnSubFinish7215311")
end

function Quest72153:OnSubFailed7215311(arg1)
    print("OnSubFailed7215311")
end

function Quest72153:OnSubStart7215312(arg1)
    print("OnSubStart7215312")
end

function Quest72153:OnSubFinish7215312(arg1)
    print("OnSubFinish7215312")
end

function Quest72153:OnSubFailed7215312(arg1)
    print("OnSubFailed7215312")
end

function Quest72153:OnSubStart7215313(arg1)
    print("OnSubStart7215313")
    this:RequestInteraction(npcs.Npc3080Data.alias)
end

function Quest72153:OnSubFinish7215313(arg1)
    print("OnSubFinish7215313")
    this:ActionSafeCall(function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc3080Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.NPC20088Data.alias, 3)
    end)
end

function Quest72153:OnSubFailed7215313(arg1)
    print("OnSubFailed7215313")
end

function Quest72153:OnSubStart7215314(arg1)
    print("OnSubStart7215314")
end

function Quest72153:OnSubFinish7215314(arg1)
    print("OnSubFinish7215314")
end

function Quest72153:OnSubFailed7215314(arg1)
    print("OnSubFailed7215314")
end

function Quest72153:OnSubStart7215315(arg1)
    print("OnSubStart7215315")
end

function Quest72153:OnSubFinish7215315(arg1)
    print("OnSubFinish7215315")
end

function Quest72153:OnSubFailed7215315(arg1)
    print("OnSubFailed7215315")
end

function Quest72153:OnSubStart7215316(arg1)
    print("OnSubStart7215316")
end

function Quest72153:OnSubFinish7215316(arg1)
    print("OnSubFinish7215316")
end

function Quest72153:OnSubFailed7215316(arg1)
    print("OnSubFailed7215316")
end

return Quest72153
