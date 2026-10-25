require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71115 = class("Quest71115", QuestActorProxy)
Quest71115.defaultAlias = "Quest71115"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest71115:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest71115:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7111501"] = self.OnSubStart7111501,
        ["7111503"] = self.OnSubStart7111503,
        ["7111502"] = self.OnSubStart7111502,
        ["7111504"] = self.OnSubStart7111504,
        ["7111518"] = self.OnSubStart7111518,
        ["7111505"] = self.OnSubStart7111505,
        ["7111506"] = self.OnSubStart7111506,
        ["7111507"] = self.OnSubStart7111507,
        ["7111508"] = self.OnSubStart7111508,
        ["7111509"] = self.OnSubStart7111509,
        ["7111510"] = self.OnSubStart7111510,
        ["7111517"] = self.OnSubStart7111517,
        ["7111511"] = self.OnSubStart7111511,
        ["7111512"] = self.OnSubStart7111512,
        ["7111513"] = self.OnSubStart7111513,
        ["7111514"] = self.OnSubStart7111514,
        ["7111515"] = self.OnSubStart7111515,
        ["7111516"] = self.OnSubStart7111516
    }
end

function Quest71115:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7111501"] = self.OnSubFinish7111501,
        ["7111503"] = self.OnSubFinish7111503,
        ["7111502"] = self.OnSubFinish7111502,
        ["7111504"] = self.OnSubFinish7111504,
        ["7111518"] = self.OnSubFinish7111518,
        ["7111505"] = self.OnSubFinish7111505,
        ["7111506"] = self.OnSubFinish7111506,
        ["7111507"] = self.OnSubFinish7111507,
        ["7111508"] = self.OnSubFinish7111508,
        ["7111509"] = self.OnSubFinish7111509,
        ["7111510"] = self.OnSubFinish7111510,
        ["7111517"] = self.OnSubFinish7111517,
        ["7111511"] = self.OnSubFinish7111511,
        ["7111512"] = self.OnSubFinish7111512,
        ["7111513"] = self.OnSubFinish7111513,
        ["7111514"] = self.OnSubFinish7111514,
        ["7111515"] = self.OnSubFinish7111515,
        ["7111516"] = self.OnSubFinish7111516
    }
end

function Quest71115:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7111503"] = self.OnSubFailed7111503}
end

function Quest71115:Start()
    print("Start")
end

function Quest71115:OnDestroy()
    print("OnDestroy")
end

function Quest71115:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71115:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71115:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71115:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest71115:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest71115:OnSubStart7111501(arg1)
    print("OnSubStart7111501")
end

function Quest71115:OnSubFinish7111501(arg1)
    print("OnSubFinish7111501")
end

function Quest71115:OnSubStart7111503(arg1)
    print("OnSubStart7111503")
    actorMgr:CreateActorWithPos("Q7111503Trigger", "Actor/Gadget/Q7111503Trigger", 70900002, 0, points.TPos_Q7111503Trigger.pos, points.TPos_Q7111503Trigger.rot, true, false, 3)
end

function Quest71115:OnSubFinish7111503(arg1)
    print("OnSubFinish7111503")
end

function Quest71115:OnSubFailed7111503(arg1)
    print("OnSubFailed7111503")
    this:ActorDestroy("Q7111503Trigger")
end

function Quest71115:OnSubStart7111502(arg1)
    print("OnSubStart7111502")
    actorMgr:CreateActorWithPos("Q7111502Trigger", "Actor/Gadget/Q7111502Trigger", 70900002, 0, points.TPos_Q7111502Trigger.pos, points.TPos_Q7111502Trigger.rot, true, false, 3)
end

function Quest71115:OnSubFinish7111502(arg1)
    print("OnSubFinish7111502")
    local actor = actorMgr:GetActor("Q7111502Trigger")
    this:ActorDestroy("Q7111502Trigger")
end

function Quest71115:OnSubStart7111504(arg1)
    print("OnSubStart7111504")
    local questVar = this:GetQuestVar(7111504, 1)
    if questVar == 0 then
        this:NpcCreateWithNpcTrigger(npcs.Npc21344Data.id, 7111504, 0, 20)
    elseif questVar == 1 then
        this:CreateQuestNpcById(7111504, npcs.Npc21344Data.id, 0)
    end
end

function Quest71115:OnSubFinish7111504(arg1)
    print("OnSubFinish7111504")
end

function Quest71115:OnSubStart7111518(arg1)
    print("OnSubStart7111518")
    this:NpcCreateWithNpcTrigger(npcs.Npc21344Data.id, 7111518, 0, 20)
end

function Quest71115:OnSubFinish7111518(arg1)
    print("OnSubFinish7111518")
end

function Quest71115:OnSubStart7111505(arg1)
    print("OnSubStart7111505")
end

function Quest71115:OnSubFinish7111505(arg1)
    print("OnSubFinish7111505")
end

function Quest71115:OnSubStart7111506(arg1)
    print("OnSubStart7111506")
end

function Quest71115:OnSubFinish7111506(arg1)
    print("OnSubFinish7111506")
end

function Quest71115:OnSubStart7111507(arg1)
    print("OnSubStart7111507")
end

function Quest71115:OnSubFinish7111507(arg1)
    print("OnSubFinish7111507")
end

function Quest71115:OnSubStart7111508(arg1)
    print("OnSubStart7111508")
end

function Quest71115:OnSubFinish7111508(arg1)
    print("OnSubFinish7111508")
end

function Quest71115:OnSubStart7111509(arg1)
    print("OnSubStart7111509")
end

function Quest71115:OnSubFinish7111509(arg1)
    print("OnSubFinish7111509")
end

function Quest71115:OnSubStart7111510(arg1)
    print("OnSubStart7111510")
end

function Quest71115:OnSubFinish7111510(arg1)
    print("OnSubFinish7111510")
    this:NarratorOnlyTaskByData(datas.Narrator_711159910)
end

function Quest71115:OnSubStart7111517(arg1)
    print("OnSubStart7111517")
end

function Quest71115:OnSubFinish7111517(arg1)
    print("OnSubFinish7111517")
end

function Quest71115:OnSubStart7111511(arg1)
    print("OnSubStart7111511")
    this:NpcCreateWithNpcTrigger(npcs.Npc21344Data.id, 7111511, 0, 20)
    actorMgr:CreateActorWithPos("Q7111511Trigger", "Actor/Gadget/Q7111511Trigger", 70900002, 0, points.TPos_Q7111511Trigger.pos, points.TPos_Q7111511Trigger.rot, true, false, 3)
end

function Quest71115:OnSubFinish7111511(arg1)
    print("OnSubFinish7111511")
end

function Quest71115:OnSubStart7111512(arg1)
    print("OnSubStart7111512")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q7111512Trigger", "Actor/Gadget/Q7111512Trigger", 70900002, 0, points.TPos_Q7111512Trigger.pos, points.TPos_Q7111512Trigger.rot, true, false, 3)
    end)
end

function Quest71115:OnSubFinish7111512(arg1)
    print("OnSubFinish7111512")
end

function Quest71115:OnSubStart7111513(arg1)
    print("OnSubStart7111513")
end

function Quest71115:OnSubFinish7111513(arg1)
    print("OnSubFinish7111513")
    this:QuestNarratorTask(datas.Narrator_7111514)
end

function Quest71115:OnSubStart7111514(arg1)
    print("OnSubStart7111514")
    actorMgr:CreateActorWithPos("Q7111514Trigger", "Actor/Gadget/Q7111514Trigger", 70900002, 0, points.TPos_Q7111514Trigger.pos, points.TPos_Q7111514Trigger.rot, true, false, 3)
end

function Quest71115:OnSubFinish7111514(arg1)
    print("OnSubFinish7111514")
end

function Quest71115:OnSubStart7111515(arg1)
    print("OnSubStart7111515")
end

function Quest71115:OnSubFinish7111515(arg1)
    print("OnSubFinish7111515")
end

function Quest71115:OnSubStart7111516(arg1)
    print("OnSubStart7111516")
end

function Quest71115:OnSubFinish7111516(arg1)
    print("OnSubFinish7111516")
    this:SafeDestroyQuestNpc(npcs.Npc21344Data.alias, 3)
end

return Quest71115
