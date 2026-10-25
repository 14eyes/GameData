require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74140 = class("Quest74140", QuestActorProxy)
Quest74140.defaultAlias = "Quest74140"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74140:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74140:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7414001"] = self.OnSubStart7414001,
        ["7414002"] = self.OnSubStart7414002,
        ["7414003"] = self.OnSubStart7414003,
        ["7414004"] = self.OnSubStart7414004,
        ["7414005"] = self.OnSubStart7414005,
        ["7414006"] = self.OnSubStart7414006,
        ["7414007"] = self.OnSubStart7414007,
        ["7414008"] = self.OnSubStart7414008,
        ["7414009"] = self.OnSubStart7414009,
        ["7414010"] = self.OnSubStart7414010,
        ["7414011"] = self.OnSubStart7414011,
        ["7414012"] = self.OnSubStart7414012,
        ["7414013"] = self.OnSubStart7414013
    }
end

function Quest74140:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7414001"] = self.OnSubFinish7414001,
        ["7414002"] = self.OnSubFinish7414002,
        ["7414003"] = self.OnSubFinish7414003,
        ["7414004"] = self.OnSubFinish7414004,
        ["7414005"] = self.OnSubFinish7414005,
        ["7414006"] = self.OnSubFinish7414006,
        ["7414007"] = self.OnSubFinish7414007,
        ["7414008"] = self.OnSubFinish7414008,
        ["7414009"] = self.OnSubFinish7414009,
        ["7414010"] = self.OnSubFinish7414010,
        ["7414011"] = self.OnSubFinish7414011,
        ["7414012"] = self.OnSubFinish7414012,
        ["7414013"] = self.OnSubFinish7414013
    }
end

function Quest74140:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74140:Start()
    print("Start")
end

function Quest74140:OnDestroy()
    print("OnDestroy")
end

function Quest74140:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74140:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74140:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74140:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74140:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74140:OnSubStart7414001(arg1)
    print("OnSubStart7414001")
end

function Quest74140:OnSubFinish7414001(arg1)
    print("OnSubFinish7414001")
end

function Quest74140:OnSubStart7414002(arg1)
    print("OnSubStart7414002")
end

function Quest74140:OnSubFinish7414002(arg1)
    print("OnSubFinish7414002")
end

function Quest74140:OnSubStart7414003(arg1)
    print("OnSubStart7414003")
end

function Quest74140:OnSubFinish7414003(arg1)
    print("OnSubFinish7414003")
end

function Quest74140:OnSubStart7414004(arg1)
    print("OnSubStart7414004")
end

function Quest74140:OnSubFinish7414004(arg1)
    print("OnSubFinish7414004")
end

function Quest74140:OnSubStart7414005(arg1)
    print("OnSubStart7414005")
end

function Quest74140:OnSubFinish7414005(arg1)
    print("OnSubFinish7414005")
end

function Quest74140:OnSubStart7414006(arg1)
    print("OnSubStart7414006")
end

function Quest74140:OnSubFinish7414006(arg1)
    print("OnSubFinish7414006")
end

function Quest74140:OnSubStart7414007(arg1)
    print("OnSubStart7414007")
end

function Quest74140:OnSubFinish7414007(arg1)
    print("OnSubFinish7414007")
end

function Quest74140:OnSubStart7414008(arg1)
    print("OnSubStart7414008")
end

function Quest74140:OnSubFinish7414008(arg1)
    print("OnSubFinish7414008")
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest74140:OnSubStart7414009(arg1)
    print("OnSubStart7414009")
    actorMgr:CreateActorWithPos("Q7414009Trigger", "Actor/Gadget/Q7414009Trigger", 70900002, 0, points.TPos_Q7414009Trigger.pos, points.TPos_Q7414009Trigger.rot, true, false, 3)
end

function Quest74140:OnSubFinish7414009(arg1)
    print("OnSubFinish7414009")
    this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21098Data.id, 0)
end

function Quest74140:OnSubStart7414010(arg1)
    print("OnSubStart7414010")
    actorMgr:CreateActorWithPos("Q7414010Trigger", "Actor/Gadget/Q7414010Trigger", 70900002, 0, points.TPos_Q7414010Trigger.pos, points.TPos_Q7414010Trigger.rot, true, false, 3)
end

function Quest74140:OnSubFinish7414010(arg1)
    print("OnSubFinish7414010")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_01)
end

function Quest74140:OnSubStart7414011(arg1)
    print("OnSubStart7414011")
end

function Quest74140:OnSubFinish7414011(arg1)
    print("OnSubFinish7414011")
    this:TransmitPlayerUseCustomizedTplByQuestId(7414011, 1, 15)
    this:SafeDestroyQuestNpc(npcs.Npc21098Data.alias, 3)
end

function Quest74140:OnSubStart7414012(arg1)
    print("OnSubStart7414012")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc5311Data.id, 0, npcs.Npc5311Data.alias)
    actorMgr:CreateActorWithPos("Q7414012Trigger", "Actor/Gadget/Q7414012Trigger", 70900002, 0, points.TPos_Q7414012Trigger.pos, points.TPos_Q7414012Trigger.rot, true, false, 3)
end

function Quest74140:OnSubFinish7414012(arg1)
    print("OnSubFinish7414012")
end

function Quest74140:OnSubStart7414013(arg1)
    print("OnSubStart7414013")
    this:RequestInteraction(npcs.Npc5311Data.alias, "", true)
end

function Quest74140:OnSubFinish7414013(arg1)
    print("OnSubFinish7414013")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5311Data.alias)
end

return Quest74140
