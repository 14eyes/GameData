require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72158 = class("Quest72158", QuestActorProxy)
Quest72158.defaultAlias = "Quest72158"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72158:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72158:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7215808"] = self.OnSubStart7215808,
        ["7215806"] = self.OnSubStart7215806,
        ["7215801"] = self.OnSubStart7215801,
        ["7215810"] = self.OnSubStart7215810,
        ["7215813"] = self.OnSubStart7215813,
        ["7215811"] = self.OnSubStart7215811,
        ["7215815"] = self.OnSubStart7215815,
        ["7215816"] = self.OnSubStart7215816,
        ["7215812"] = self.OnSubStart7215812,
        ["7215814"] = self.OnSubStart7215814,
        ["7215802"] = self.OnSubStart7215802,
        ["7215807"] = self.OnSubStart7215807,
        ["7215803"] = self.OnSubStart7215803,
        ["7215809"] = self.OnSubStart7215809,
        ["7215804"] = self.OnSubStart7215804,
        ["7215805"] = self.OnSubStart7215805
    }
end

function Quest72158:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7215808"] = self.OnSubFinish7215808,
        ["7215806"] = self.OnSubFinish7215806,
        ["7215801"] = self.OnSubFinish7215801,
        ["7215810"] = self.OnSubFinish7215810,
        ["7215813"] = self.OnSubFinish7215813,
        ["7215811"] = self.OnSubFinish7215811,
        ["7215815"] = self.OnSubFinish7215815,
        ["7215816"] = self.OnSubFinish7215816,
        ["7215812"] = self.OnSubFinish7215812,
        ["7215814"] = self.OnSubFinish7215814,
        ["7215802"] = self.OnSubFinish7215802,
        ["7215807"] = self.OnSubFinish7215807,
        ["7215803"] = self.OnSubFinish7215803,
        ["7215809"] = self.OnSubFinish7215809,
        ["7215804"] = self.OnSubFinish7215804,
        ["7215805"] = self.OnSubFinish7215805
    }
end

function Quest72158:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7215808"] = self.OnSubFailed7215808,
        ["7215806"] = self.OnSubFailed7215806,
        ["7215801"] = self.OnSubFailed7215801,
        ["7215810"] = self.OnSubFailed7215810,
        ["7215813"] = self.OnSubFailed7215813,
        ["7215811"] = self.OnSubFailed7215811,
        ["7215815"] = self.OnSubFailed7215815,
        ["7215816"] = self.OnSubFailed7215816,
        ["7215812"] = self.OnSubFailed7215812,
        ["7215814"] = self.OnSubFailed7215814,
        ["7215802"] = self.OnSubFailed7215802,
        ["7215807"] = self.OnSubFailed7215807,
        ["7215803"] = self.OnSubFailed7215803,
        ["7215809"] = self.OnSubFailed7215809,
        ["7215804"] = self.OnSubFailed7215804,
        ["7215805"] = self.OnSubFailed7215805
    }
end

function Quest72158:Start()
    print("Start")
end

function Quest72158:OnDestroy()
    print("OnDestroy")
end

function Quest72158:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72158:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72158:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72158:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72158:OnSubStart7215808(arg1)
    print("OnSubStart7215808")
    actorMgr:CreateActorWithPos("Q7215808Trigger", "Actor/Gadget/Q7215808Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72158_PlayerDao").pos, sceneData:GetDummyPoint(3, "WQ72158_PlayerDao").rot, true, false, 3)
end

function Quest72158:OnSubFinish7215808(arg1)
    print("OnSubFinish7215808")
    self:NarratorOnlyTask(datas.Paimon01, nil, "")
end

function Quest72158:OnSubFailed7215808(arg1)
    print("OnSubFailed7215808")
end

function Quest72158:OnSubStart7215806(arg1)
    print("OnSubStart7215806")
end

function Quest72158:OnSubFinish7215806(arg1)
    print("OnSubFinish7215806")
end

function Quest72158:OnSubFailed7215806(arg1)
    print("OnSubFailed7215806")
end

function Quest72158:OnSubStart7215801(arg1)
    print("OnSubStart7215801")
end

function Quest72158:OnSubFinish7215801(arg1)
    print("OnSubFinish7215801")
end

function Quest72158:OnSubFailed7215801(arg1)
    print("OnSubFailed7215801")
end

function Quest72158:OnSubStart7215810(arg1)
    print("OnSubStart7215810")
end

function Quest72158:OnSubFinish7215810(arg1)
    print("OnSubFinish7215810")
end

function Quest72158:OnSubFailed7215810(arg1)
    print("OnSubFailed7215810")
end

function Quest72158:OnSubStart7215813(arg1)
    print("OnSubStart7215813")
end

function Quest72158:OnSubFinish7215813(arg1)
    print("OnSubFinish7215813")
end

function Quest72158:OnSubFailed7215813(arg1)
    print("OnSubFailed7215813")
end

function Quest72158:OnSubStart7215811(arg1)
    print("OnSubStart7215811")
end

function Quest72158:OnSubFinish7215811(arg1)
    print("OnSubFinish7215811")
end

function Quest72158:OnSubFailed7215811(arg1)
    print("OnSubFailed7215811")
end

function Quest72158:OnSubStart7215815(arg1)
    print("OnSubStart7215815")
end

function Quest72158:OnSubFinish7215815(arg1)
    print("OnSubFinish7215815")
end

function Quest72158:OnSubFailed7215815(arg1)
    print("OnSubFailed7215815")
end

function Quest72158:OnSubStart7215816(arg1)
    print("OnSubStart7215816")
end

function Quest72158:OnSubFinish7215816(arg1)
    print("OnSubFinish7215816")
end

function Quest72158:OnSubFailed7215816(arg1)
    print("OnSubFailed7215816")
end

function Quest72158:OnSubStart7215812(arg1)
    print("OnSubStart7215812")
end

function Quest72158:OnSubFinish7215812(arg1)
    print("OnSubFinish7215812")
end

function Quest72158:OnSubFailed7215812(arg1)
    print("OnSubFailed7215812")
end

function Quest72158:OnSubStart7215814(arg1)
    print("OnSubStart7215814")
end

function Quest72158:OnSubFinish7215814(arg1)
    print("OnSubFinish7215814")
end

function Quest72158:OnSubFailed7215814(arg1)
    print("OnSubFailed7215814")
end

function Quest72158:OnSubStart7215802(arg1)
    print("OnSubStart7215802")
    self:PlayCutsceneIndex("72158", function(arg1)
        arg1:FinishQuestID(false, 7215802)
    end, nil, nil, false)
end

function Quest72158:OnSubFinish7215802(arg1)
    print("OnSubFinish7215802")
end

function Quest72158:OnSubFailed7215802(arg1)
    print("OnSubFailed7215802")
end

function Quest72158:OnSubStart7215807(arg1)
    print("OnSubStart7215807")
    actorMgr:CreateActorWithPos("Q7215807Trigger", "Actor/Gadget/Q7215807Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72158_Zhandouqian").pos, sceneData:GetDummyPoint(3, "WQ72158_Zhandouqian").rot, true, false, 3)
end

function Quest72158:OnSubFinish7215807(arg1)
    print("OnSubFinish7215807")
    self:NarratorOnlyTask(datas.Paimon02, nil, "")
end

function Quest72158:OnSubFailed7215807(arg1)
    print("OnSubFailed7215807")
end

function Quest72158:OnSubStart7215803(arg1)
    print("OnSubStart7215803")
end

function Quest72158:OnSubFinish7215803(arg1)
    print("OnSubFinish7215803")
    self:NarratorOnlyTask(datas.Paimon03, nil, "")
end

function Quest72158:OnSubFailed7215803(arg1)
    print("OnSubFailed7215803")
end

function Quest72158:OnSubStart7215809(arg1)
    print("OnSubStart7215809")
    actorMgr:CreateActorWithPos("Q7215809Trigger", "Actor/Gadget/Q7215809Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72158_LastFirst").pos, sceneData:GetDummyPoint(3, "WQ72158_LastFirst").rot, true, false, 3)
end

function Quest72158:OnSubFinish7215809(arg1)
    print("OnSubFinish7215809")
end

function Quest72158:OnSubFailed7215809(arg1)
    print("OnSubFailed7215809")
end

function Quest72158:OnSubStart7215804(arg1)
    print("OnSubStart7215804")
    actorMgr:CreateActorWithPos("Q72158Trigger", "Actor/Gadget/Q72158Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72158_Last").pos, sceneData:GetDummyPoint(3, "WQ72158_Last").rot, true, false, 3)
end

function Quest72158:OnSubFinish7215804(arg1)
    print("OnSubFinish7215804")
end

function Quest72158:OnSubFailed7215804(arg1)
    print("OnSubFailed7215804")
end

function Quest72158:OnSubStart7215805(arg1)
    print("OnSubStart7215805")
    self:CreateQuestNpc(arg1, npcs.Npc3180Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3181Data.id, 2)
end

function Quest72158:OnSubFinish7215805(arg1)
    print("OnSubFinish7215805")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3180Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3181Data.alias)
end

function Quest72158:OnSubFailed7215805(arg1)
    print("OnSubFailed7215805")
end

return Quest72158
