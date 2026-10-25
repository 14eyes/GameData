require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74223 = class("Quest74223", QuestActorProxy)
Quest74223.defaultAlias = "Quest74223"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74223:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74223:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7422301"] = self.OnSubStart7422301,
        ["7422302"] = self.OnSubStart7422302,
        ["7422305"] = self.OnSubStart7422305,
        ["7422306"] = self.OnSubStart7422306,
        ["7422307"] = self.OnSubStart7422307,
        ["7422308"] = self.OnSubStart7422308,
        ["7422303"] = self.OnSubStart7422303,
        ["7422304"] = self.OnSubStart7422304
    }
end

function Quest74223:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7422301"] = self.OnSubFinish7422301,
        ["7422302"] = self.OnSubFinish7422302,
        ["7422305"] = self.OnSubFinish7422305,
        ["7422306"] = self.OnSubFinish7422306,
        ["7422307"] = self.OnSubFinish7422307,
        ["7422308"] = self.OnSubFinish7422308,
        ["7422303"] = self.OnSubFinish7422303,
        ["7422304"] = self.OnSubFinish7422304
    }
end

function Quest74223:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7422301"] = self.OnSubFailed7422301,
        ["7422302"] = self.OnSubFailed7422302,
        ["7422307"] = self.OnSubFailed7422307,
        ["7422303"] = self.OnSubFailed7422303,
        ["7422304"] = self.OnSubFailed7422304
    }
end

function Quest74223:Start()
    print("Start")
end

function Quest74223:OnDestroy()
    print("OnDestroy")
end

function Quest74223:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74223:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74223:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74223:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74223:OnSubStart7422301(arg1)
    print("OnSubStart7422301")
    this:CreateQuestNpc(arg1, npcs.Npc5349Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5349Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q74223Trigger", "Actor/Gadget/Q74223Trigger", 70900002, 0, points.TPos_Q74223Trigger.pos, points.TPos_Q74223Trigger.rot, true, false, 3)
    this:CreateSpeechBubbleTask(npcs.Npc5349Data.id, 742239901, 5, true, 10, 30, true)
end

function Quest74223:OnSubFinish7422301(arg1)
    print("OnSubFinish7422301")
end

function Quest74223:OnSubFailed7422301(arg1)
    print("OnSubFailed7422301")
    this:DestroyQuestNpcActor(npcs.Npc5349Data.alias, 3)
end

function Quest74223:OnSubStart7422302(arg1)
    print("OnSubStart7422302")
end

function Quest74223:OnSubFinish7422302(arg1)
    print("OnSubFinish7422302")
end

function Quest74223:OnSubFailed7422302(arg1)
    print("OnSubFailed7422302")
    this:DestroyQuestNpcActor(npcs.Npc5349Data.alias, 3)
end

function Quest74223:OnSubStart7422305(arg1)
    print("OnSubStart7422305")
end

function Quest74223:OnSubFinish7422305(arg1)
    print("OnSubFinish7422305")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74223:OnSubStart7422306(arg1)
    print("OnSubStart7422306")
end

function Quest74223:OnSubFinish7422306(arg1)
    print("OnSubFinish7422306")
end

function Quest74223:OnSubStart7422307(arg1)
    print("OnSubStart7422307")
end

function Quest74223:OnSubFinish7422307(arg1)
    print("OnSubFinish7422307")
end

function Quest74223:OnSubFailed7422307(arg1)
    print("OnSubFailed7422307")
    this:DestroyQuestNpcActor(npcs.Npc5349Data.alias, 3)
end

function Quest74223:OnSubStart7422308(arg1)
    print("OnSubStart7422308")
end

function Quest74223:OnSubFinish7422308(arg1)
    print("OnSubFinish7422308")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74223:OnSubStart7422303(arg1)
    print("OnSubStart7422303")
end

function Quest74223:OnSubFinish7422303(arg1)
    print("OnSubFinish7422303")
end

function Quest74223:OnSubFailed7422303(arg1)
    print("OnSubFailed7422303")
    this:DestroyQuestNpcActor(npcs.Npc5349Data.alias, 3)
end

function Quest74223:OnSubStart7422304(arg1)
    print("OnSubStart7422304")
    this:RequestInteraction(npcs.Npc5349Data.alias, "", true)
end

function Quest74223:OnSubFinish7422304(arg1)
    print("OnSubFinish7422304")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5349Data.alias)
    this:ClearSpeechBubbleTask()
end

function Quest74223:OnSubFailed7422304(arg1)
    print("OnSubFailed7422304")
    this:DestroyQuestNpcActor(npcs.Npc5349Data.alias, 3)
end

return Quest74223
