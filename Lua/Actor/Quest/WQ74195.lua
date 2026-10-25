require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74195 = class("Quest74195", QuestActorProxy)
Quest74195.defaultAlias = "Quest74195"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74195:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74195:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7419513"] = self.OnSubStart7419513,
        ["7419518"] = self.OnSubStart7419518,
        ["7419530"] = self.OnSubStart7419530,
        ["7419531"] = self.OnSubStart7419531,
        ["7419523"] = self.OnSubStart7419523,
        ["7419501"] = self.OnSubStart7419501,
        ["7419502"] = self.OnSubStart7419502,
        ["7419524"] = self.OnSubStart7419524,
        ["7419525"] = self.OnSubStart7419525,
        ["7419526"] = self.OnSubStart7419526,
        ["7419512"] = self.OnSubStart7419512,
        ["7419520"] = self.OnSubStart7419520,
        ["7419527"] = self.OnSubStart7419527,
        ["7419503"] = self.OnSubStart7419503,
        ["7419504"] = self.OnSubStart7419504,
        ["7419532"] = self.OnSubStart7419532,
        ["7419533"] = self.OnSubStart7419533,
        ["7419534"] = self.OnSubStart7419534,
        ["7419506"] = self.OnSubStart7419506,
        ["7419516"] = self.OnSubStart7419516,
        ["7419507"] = self.OnSubStart7419507,
        ["7419508"] = self.OnSubStart7419508,
        ["7419509"] = self.OnSubStart7419509,
        ["7419510"] = self.OnSubStart7419510,
        ["7419511"] = self.OnSubStart7419511,
        ["7419528"] = self.OnSubStart7419528,
        ["7419529"] = self.OnSubStart7419529,
        ["7419519"] = self.OnSubStart7419519,
        ["7419521"] = self.OnSubStart7419521,
        ["7419522"] = self.OnSubStart7419522,
        ["7419514"] = self.OnSubStart7419514,
        ["7419517"] = self.OnSubStart7419517
    }
end

function Quest74195:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7419513"] = self.OnSubFinish7419513,
        ["7419518"] = self.OnSubFinish7419518,
        ["7419530"] = self.OnSubFinish7419530,
        ["7419531"] = self.OnSubFinish7419531,
        ["7419523"] = self.OnSubFinish7419523,
        ["7419501"] = self.OnSubFinish7419501,
        ["7419502"] = self.OnSubFinish7419502,
        ["7419524"] = self.OnSubFinish7419524,
        ["7419525"] = self.OnSubFinish7419525,
        ["7419526"] = self.OnSubFinish7419526,
        ["7419512"] = self.OnSubFinish7419512,
        ["7419520"] = self.OnSubFinish7419520,
        ["7419527"] = self.OnSubFinish7419527,
        ["7419503"] = self.OnSubFinish7419503,
        ["7419504"] = self.OnSubFinish7419504,
        ["7419532"] = self.OnSubFinish7419532,
        ["7419533"] = self.OnSubFinish7419533,
        ["7419534"] = self.OnSubFinish7419534,
        ["7419506"] = self.OnSubFinish7419506,
        ["7419516"] = self.OnSubFinish7419516,
        ["7419507"] = self.OnSubFinish7419507,
        ["7419508"] = self.OnSubFinish7419508,
        ["7419509"] = self.OnSubFinish7419509,
        ["7419510"] = self.OnSubFinish7419510,
        ["7419511"] = self.OnSubFinish7419511,
        ["7419528"] = self.OnSubFinish7419528,
        ["7419529"] = self.OnSubFinish7419529,
        ["7419519"] = self.OnSubFinish7419519,
        ["7419521"] = self.OnSubFinish7419521,
        ["7419522"] = self.OnSubFinish7419522,
        ["7419514"] = self.OnSubFinish7419514,
        ["7419517"] = self.OnSubFinish7419517
    }
end

function Quest74195:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74195:Start()
    print("Start")
end

function Quest74195:OnDestroy()
    print("OnDestroy")
end

function Quest74195:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74195:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74195:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74195:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74195:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74195:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74195:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest74195:OnSubStart7419513(arg1)
    print("OnSubStart7419513")
    actorMgr:CreateActorWithPos("Q7419513Trigger", "Actor/Gadget/Q7419513Trigger", 70900002, 0, {x = 1275.469, y = 108.051, z = 3885.282}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74195:OnSubFinish7419513(arg1)
    print("OnSubFinish7419513")
end

function Quest74195:OnSubStart7419518(arg1)
    print("OnSubStart7419518")
    this:CreateQuestNpc(arg1, npcs.Npc21338Data.id, 0)
    actorMgr:CreateActorWithPos("Q7419518Trigger", "Actor/Gadget/Q7419518Trigger", 70900002, 0, {x = 1268.001, y = 113.463, z = 3856.609}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74195:OnSubFinish7419518(arg1)
    print("OnSubFinish7419518")
end

function Quest74195:OnSubStart7419530(arg1)
    print("OnSubStart7419530")
    this:CallDelayByQuest("createlate1", 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc21338Data.id, 0)
        actorMgr:CreateActorWithPos("Q7419530Trigger", "Actor/Gadget/Q7419530Trigger", 70900002, 0, {x = 1250.825, y = 108.99, z = 3857.779}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest74195:OnSubFinish7419530(arg1)
    print("OnSubFinish7419530")
end

function Quest74195:OnSubStart7419531(arg1)
    print("OnSubStart7419531")
    this:CallDelayByQuest("createlate1", 0.5, function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc21338Data.id, 7419531, 0, 30)
    end)
end

function Quest74195:OnSubFinish7419531(arg1)
    print("OnSubFinish7419531")
end

function Quest74195:OnSubStart7419523(arg1)
    print("OnSubStart7419523")
    actorMgr:CreateActorWithPos("Q74195Trigger", "Actor/Gadget/Q74195Trigger", 70900002, 0, {x = 1166.114, y = 126.733, z = 3847.5}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74195:OnSubFinish7419523(arg1)
    print("OnSubFinish7419523")
end

function Quest74195:OnSubStart7419501(arg1)
    print("OnSubStart7419501")
    actorMgr:CreateActorWithPos("Q74195Classroom1", "Actor/Gadget/Q74195Classroom1", 70900002, 0, {x = 1300.172, y = 113.373, z = 3865.315}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74195:OnSubFinish7419501(arg1)
    print("OnSubFinish7419501")
end

function Quest74195:OnSubStart7419502(arg1)
    print("OnSubStart7419502")
    this:NpcCreateWithNpcTrigger(npcs.Npc21338Data.id, 7419502, 0, 50)
end

function Quest74195:OnSubFinish7419502(arg1)
    print("OnSubFinish7419502")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21338Data.alias)
end

function Quest74195:OnSubStart7419524(arg1)
    print("OnSubStart7419524")
end

function Quest74195:OnSubFinish7419524(arg1)
    print("OnSubFinish7419524")
end

function Quest74195:OnSubStart7419525(arg1)
    print("OnSubStart7419525")
end

function Quest74195:OnSubFinish7419525(arg1)
    print("OnSubFinish7419525")
end

function Quest74195:OnSubStart7419526(arg1)
    print("OnSubStart7419526")
end

function Quest74195:OnSubFinish7419526(arg1)
    print("OnSubFinish7419526")
end

function Quest74195:OnSubStart7419512(arg1)
    print("OnSubStart7419512")
end

function Quest74195:OnSubFinish7419512(arg1)
    print("OnSubFinish7419512")
end

function Quest74195:OnSubStart7419520(arg1)
    print("OnSubStart7419520")
end

function Quest74195:OnSubFinish7419520(arg1)
    print("OnSubFinish7419520")
end

function Quest74195:OnSubStart7419527(arg1)
    print("OnSubStart7419527")
end

function Quest74195:OnSubFinish7419527(arg1)
    print("OnSubFinish7419527")
end

function Quest74195:OnSubStart7419503(arg1)
    print("OnSubStart7419503")
    actorMgr:CreateActorWithPos("Q74195Stage", "Actor/Gadget/Q74195Stage", 70900002, 0, {x = 1244.896, y = 102.286, z = 3814.263}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74195:OnSubFinish7419503(arg1)
    print("OnSubFinish7419503")
end

function Quest74195:OnSubStart7419504(arg1)
    print("OnSubStart7419504")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc21338Data.id, 7419504, 0, 30)
    end)
end

function Quest74195:OnSubFinish7419504(arg1)
    print("OnSubFinish7419504")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21338Data.alias)
end

function Quest74195:OnSubStart7419532(arg1)
    print("OnSubStart7419532")
end

function Quest74195:OnSubFinish7419532(arg1)
    print("OnSubFinish7419532")
end

function Quest74195:OnSubStart7419533(arg1)
    print("OnSubStart7419533")
end

function Quest74195:OnSubFinish7419533(arg1)
    print("OnSubFinish7419533")
end

function Quest74195:OnSubStart7419534(arg1)
    print("OnSubStart7419534")
end

function Quest74195:OnSubFinish7419534(arg1)
    print("OnSubFinish7419534")
end

function Quest74195:OnSubStart7419506(arg1)
    print("OnSubStart7419506")
    actorMgr:CreateActorWithPos("Q74195Classroom10", "Actor/Gadget/Q74195Classroom10", 70900002, 0, {x = 1300.085, y = 114.981, z = 3866.043}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74195:OnSubFinish7419506(arg1)
    print("OnSubFinish7419506")
end

function Quest74195:OnSubStart7419516(arg1)
    print("OnSubStart7419516")
    actorMgr:CreateActorWithPos("Q74195Classroom11", "Actor/Gadget/Q74195Classroom11", 70900002, 0, {x = 1299.426, y = 112.233, z = 3867.431}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74195:OnSubFinish7419516(arg1)
    print("OnSubFinish7419516")
end

function Quest74195:OnSubStart7419507(arg1)
    print("OnSubStart7419507")
end

function Quest74195:OnSubFinish7419507(arg1)
    print("OnSubFinish7419507")
end

function Quest74195:OnSubStart7419508(arg1)
    print("OnSubStart7419508")
end

function Quest74195:OnSubFinish7419508(arg1)
    print("OnSubFinish7419508")
end

function Quest74195:OnSubStart7419509(arg1)
    print("OnSubStart7419509")
    this:CreateQuestNpc(arg1, npcs.Npc21338Data.id, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21347Data.id, 7419509, 0, 40, 0.5)
end

function Quest74195:OnSubFinish7419509(arg1)
    print("OnSubFinish7419509")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21338Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21347Data.alias)
end

function Quest74195:OnSubStart7419510(arg1)
    print("OnSubStart7419510")
end

function Quest74195:OnSubFinish7419510(arg1)
    print("OnSubFinish7419510")
end

function Quest74195:OnSubStart7419511(arg1)
    print("OnSubStart7419511")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21338Data.id, 7419511, 0, 40, 1)
end

function Quest74195:OnSubFinish7419511(arg1)
    print("OnSubFinish7419511")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21338Data.alias)
end

function Quest74195:OnSubStart7419528(arg1)
    print("OnSubStart7419528")
    this:CreateQuestNpc(arg1, npcs.Npc21338Data.id, 0)
    actorMgr:CreateActorWithPos("Q7419528Trigger", "Actor/Gadget/Q7419528Trigger", 70900002, 0, {x = 1300.39, y = 113.882, z = 3870.55}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74195:OnSubFinish7419528(arg1)
    print("OnSubFinish7419528")
end

function Quest74195:OnSubStart7419529(arg1)
    print("OnSubStart7419529")
    this:CallDelayByQuest("createlate2", 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc21338Data.id, 0)
    end)
end

function Quest74195:OnSubFinish7419529(arg1)
    print("OnSubFinish7419529")
end

function Quest74195:OnSubStart7419519(arg1)
    print("OnSubStart7419519")
end

function Quest74195:OnSubFinish7419519(arg1)
    print("OnSubFinish7419519")
end

function Quest74195:OnSubStart7419521(arg1)
    print("OnSubStart7419521")
end

function Quest74195:OnSubFinish7419521(arg1)
    print("OnSubFinish7419521")
end

function Quest74195:OnSubStart7419522(arg1)
    print("OnSubStart7419522")
end

function Quest74195:OnSubFinish7419522(arg1)
    print("OnSubFinish7419522")
end

function Quest74195:OnSubStart7419514(arg1)
    print("OnSubStart7419514")
end

function Quest74195:OnSubFinish7419514(arg1)
    print("OnSubFinish7419514")
end

function Quest74195:OnSubStart7419517(arg1)
    print("OnSubStart7419517")
    this:CreateQuestNpc(arg1, npcs.Npc21338Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21338Data.alias, 74195)
    this:NpcWalkToTaskEasy(questNpcActor, {x = 1275.99, y = 108.99, z = 3866.51}, function(arg1)
        this:GetQuestNpcActor(npcs.Npc21338Data.alias):DoFreeStyle(14, true, nil, true, true, false, false)
        this:CallDelayByQuest("removecat1", 0.5, function(arg1)
            this:GetQuestNpcActor(npcs.Npc21338Data.alias):DestroyWithDitherEx(0.5)
            actorUtils.FinishQuestID(false, 7419517)
        end)
    end)
end

function Quest74195:OnSubFinish7419517(arg1)
    print("OnSubFinish7419517")
end

return Quest74195
