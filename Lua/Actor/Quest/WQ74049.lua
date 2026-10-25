require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74049 = class("Quest74049", QuestActorProxy)
Quest74049.defaultAlias = "Quest74049"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74049:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74049:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7404901"] = self.OnSubStart7404901,
        ["7404902"] = self.OnSubStart7404902,
        ["7404903"] = self.OnSubStart7404903,
        ["7404904"] = self.OnSubStart7404904,
        ["7404905"] = self.OnSubStart7404905,
        ["7404906"] = self.OnSubStart7404906,
        ["7404907"] = self.OnSubStart7404907,
        ["7404908"] = self.OnSubStart7404908
    }
end

function Quest74049:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7404901"] = self.OnSubFinish7404901,
        ["7404902"] = self.OnSubFinish7404902,
        ["7404903"] = self.OnSubFinish7404903,
        ["7404904"] = self.OnSubFinish7404904,
        ["7404905"] = self.OnSubFinish7404905,
        ["7404906"] = self.OnSubFinish7404906,
        ["7404907"] = self.OnSubFinish7404907,
        ["7404908"] = self.OnSubFinish7404908
    }
end

function Quest74049:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74049:Start()
    print("Start")
end

function Quest74049:OnDestroy()
    print("OnDestroy")
end

function Quest74049:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74049:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74049:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74049:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74049:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest74049:OnSubStart7404901(arg1)
    print("OnSubStart7404901")
    this:CreateQuestNpc(arg1, npcs.Npc5315Data.id, 0)
end

function Quest74049:OnSubFinish7404901(arg1)
    print("OnSubFinish7404901")
    this:SafeDestroyQuestNpc(npcs.Npc5315Data.alias, 3)
end

function Quest74049:OnSubStart7404902(arg1)
    print("OnSubStart7404902")
    this:CreateQuestNpc(arg1, npcs.Npc5315Data.id, 0)
end

function Quest74049:OnSubFinish7404902(arg1)
    print("OnSubFinish7404902")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5315Data.alias)
end

function Quest74049:OnSubStart7404903(arg1)
    print("OnSubStart7404903")
    actorMgr:CreateActorWithPos("Q7404903_EnterRegion", "Actor/Gadget/Q7404903_EnterRegion", 70900002, 0, {x = 2458.843, y = 241.505, z = 4870.954}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74049:OnSubFinish7404903(arg1)
    print("OnSubFinish7404903")
end

function Quest74049:OnSubStart7404904(arg1)
    print("OnSubStart7404904")
end

function Quest74049:OnSubFinish7404904(arg1)
    print("OnSubFinish7404904")
end

function Quest74049:OnSubStart7404905(arg1)
    print("OnSubStart7404905")
    this:NpcCreateWithNpcTrigger(npcs.Npc5315Data.id, 7404905, 0, 10)
end

function Quest74049:OnSubFinish7404905(arg1)
    print("OnSubFinish7404905")
end

function Quest74049:OnSubStart7404906(arg1)
    print("OnSubStart7404906")
end

function Quest74049:OnSubFinish7404906(arg1)
    print("OnSubFinish7404906")
end

function Quest74049:OnSubStart7404907(arg1)
    print("OnSubStart7404907")
end

function Quest74049:OnSubFinish7404907(arg1)
    print("OnSubFinish7404907")
    this:TransmitPlayerById(arg1, 1)
end

function Quest74049:OnSubStart7404908(arg1)
    print("OnSubStart7404908")
    actorMgr:CreateActorWithPos("Q74049_NPCTalk", "Actor/Gadget/Q74049_NPCTalk", 70900002, 0, points.TPos_Q74049_NPCTalk.pos, points.TPos_Q74049_NPCTalk.rot, true, false, 3)
end

function Quest74049:OnSubFinish7404908(arg1)
    print("OnSubFinish7404908")
    this:ShowBlackScreenWithDialogText(0.5, 2, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc5315Data.alias, 3)
end

return Quest74049
