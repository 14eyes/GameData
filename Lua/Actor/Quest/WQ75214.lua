require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75214 = class("Quest75214", QuestActorProxy)
Quest75214.defaultAlias = "Quest75214"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75214:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75214:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7521401"] = self.OnSubStart7521401,
        ["7521402"] = self.OnSubStart7521402,
        ["7521403"] = self.OnSubStart7521403,
        ["7521404"] = self.OnSubStart7521404,
        ["7521405"] = self.OnSubStart7521405,
        ["7521406"] = self.OnSubStart7521406,
        ["7521407"] = self.OnSubStart7521407,
        ["7521408"] = self.OnSubStart7521408,
        ["7521409"] = self.OnSubStart7521409,
        ["7521410"] = self.OnSubStart7521410,
        ["7521411"] = self.OnSubStart7521411,
        ["7521412"] = self.OnSubStart7521412,
        ["7521413"] = self.OnSubStart7521413,
        ["7521416"] = self.OnSubStart7521416,
        ["7521418"] = self.OnSubStart7521418,
        ["7521417"] = self.OnSubStart7521417,
        ["7521419"] = self.OnSubStart7521419,
        ["7521414"] = self.OnSubStart7521414,
        ["7521420"] = self.OnSubStart7521420,
        ["7521415"] = self.OnSubStart7521415,
        ["7521421"] = self.OnSubStart7521421
    }
end

function Quest75214:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7521401"] = self.OnSubFinish7521401,
        ["7521402"] = self.OnSubFinish7521402,
        ["7521403"] = self.OnSubFinish7521403,
        ["7521404"] = self.OnSubFinish7521404,
        ["7521405"] = self.OnSubFinish7521405,
        ["7521406"] = self.OnSubFinish7521406,
        ["7521407"] = self.OnSubFinish7521407,
        ["7521408"] = self.OnSubFinish7521408,
        ["7521409"] = self.OnSubFinish7521409,
        ["7521410"] = self.OnSubFinish7521410,
        ["7521411"] = self.OnSubFinish7521411,
        ["7521412"] = self.OnSubFinish7521412,
        ["7521413"] = self.OnSubFinish7521413,
        ["7521416"] = self.OnSubFinish7521416,
        ["7521418"] = self.OnSubFinish7521418,
        ["7521417"] = self.OnSubFinish7521417,
        ["7521419"] = self.OnSubFinish7521419,
        ["7521414"] = self.OnSubFinish7521414,
        ["7521420"] = self.OnSubFinish7521420,
        ["7521415"] = self.OnSubFinish7521415,
        ["7521421"] = self.OnSubFinish7521421
    }
end

function Quest75214:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75214:Start()
    print("Start")
end

function Quest75214:OnDestroy()
    print("OnDestroy")
end

function Quest75214:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75214:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75214:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75214:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7521401Trigger")
    this:ActorDestroy("Q7521402Trigger")
    this:ActorDestroy("Q7521403Trigger")
    this:ActorDestroy("Q7521404Trigger")
    this:ActorDestroy("Q7521405Trigger")
    this:ActorDestroy("Q7521409Trigger")
    this:ActorDestroy("Q7521414Trigger")
    this:ActorDestroy("Q7521417Trigger")
    this:ActorDestroy("Q7521421Trigger")
end

function Quest75214:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75214:OnSubStart7521401(arg1)
    print("OnSubStart7521401")
    actorMgr:CreateActorWithPos("Q7521401Trigger", "Actor/Gadget/Q7521401Trigger", 70900002, 0, points._Q7521401TriggerPoint_.pos, points._Q7521401TriggerPoint_.rot, true, false, 3)
end

function Quest75214:OnSubFinish7521401(arg1)
    print("OnSubFinish7521401")
end

function Quest75214:OnSubStart7521402(arg1)
    print("OnSubStart7521402")
    this:CreateQuestNpc(arg1, npcs.Npc6528.id, 0, false, 0)
end

function Quest75214:OnSubFinish7521402(arg1)
    print("OnSubFinish7521402")
end

function Quest75214:OnSubStart7521403(arg1)
    print("OnSubStart7521403")
    actorMgr:CreateActorWithPos("Q7521403Trigger", "Actor/Gadget/Q7521403Trigger", 70900002, 0, points._Q7521403TriggerPoint_.pos, points._Q7521403TriggerPoint_.rot, true, false, 3)
end

function Quest75214:OnSubFinish7521403(arg1)
    print("OnSubFinish7521403")
    this:SafeDestroyQuestNpc(npcs.Npc6528.alias, 3)
end

function Quest75214:OnSubStart7521404(arg1)
    print("OnSubStart7521404")
    this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
end

function Quest75214:OnSubFinish7521404(arg1)
    print("OnSubFinish7521404")
end

function Quest75214:OnSubStart7521405(arg1)
    print("OnSubStart7521405")
    this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7521405Trigger", "Actor/Gadget/Q7521405Trigger", 70900002, 0, points._Q7521405TriggerPoint_.pos, points._Q7521405TriggerPoint_.rot, true, false, 3)
end

function Quest75214:OnSubFinish7521405(arg1)
    print("OnSubFinish7521405")
end

function Quest75214:OnSubStart7521406(arg1)
    print("OnSubStart7521406")
    this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
end

function Quest75214:OnSubFinish7521406(arg1)
    print("OnSubFinish7521406")
end

function Quest75214:OnSubStart7521407(arg1)
    print("OnSubStart7521407")
    this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21845.id, 0, false, 0)
end

function Quest75214:OnSubFinish7521407(arg1)
    print("OnSubFinish7521407")
    this:SafeDestroyQuestNpc(npcs.Npc14227.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21845.alias, 3)
end

function Quest75214:OnSubStart7521408(arg1)
    print("OnSubStart7521408")
    this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
end

function Quest75214:OnSubFinish7521408(arg1)
    print("OnSubFinish7521408")
end

function Quest75214:OnSubStart7521409(arg1)
    print("OnSubStart7521409")
    this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7521409Trigger", "Actor/Gadget/Q7521409Trigger", 70900002, 0, points._Q7521409TriggerPoint_.pos, points._Q7521409TriggerPoint_.rot, true, false, 3)
end

function Quest75214:OnSubFinish7521409(arg1)
    print("OnSubFinish7521409")
end

function Quest75214:OnSubStart7521410(arg1)
    print("OnSubStart7521410")
    this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
end

function Quest75214:OnSubFinish7521410(arg1)
    print("OnSubFinish7521410")
end

function Quest75214:OnSubStart7521411(arg1)
    print("OnSubStart7521411")
    this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21845.id, 0, false, 0)
end

function Quest75214:OnSubFinish7521411(arg1)
    print("OnSubFinish7521411")
    this:SafeDestroyQuestNpc(npcs.Npc14227.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21845.alias, 3)
end

function Quest75214:OnSubStart7521412(arg1)
    print("OnSubStart7521412")
    this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
end

function Quest75214:OnSubFinish7521412(arg1)
    print("OnSubFinish7521412")
end

function Quest75214:OnSubStart7521413(arg1)
    print("OnSubStart7521413")
    this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
end

function Quest75214:OnSubFinish7521413(arg1)
    print("OnSubFinish7521413")
    this:SafeDestroyQuestNpc(npcs.Npc14227.alias, 3)
end

function Quest75214:OnSubStart7521416(arg1)
    print("OnSubStart7521416")
    this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
end

function Quest75214:OnSubFinish7521416(arg1)
    print("OnSubFinish7521416")
end

function Quest75214:OnSubStart7521418(arg1)
    print("OnSubStart7521418")
end

function Quest75214:OnSubFinish7521418(arg1)
    print("OnSubFinish7521418")
    this:SafeDestroyQuestNpc(npcs.Npc14227.alias, 3)
end

function Quest75214:OnSubStart7521417(arg1)
    print("OnSubStart7521417")
    actorMgr:CreateActorWithPos("Q7521417Trigger", "Actor/Gadget/Q7521417Trigger", 70900002, 0, points._Q7521417TriggerPoint_.pos, points._Q7521417TriggerPoint_.rot, true, false, 3)
end

function Quest75214:OnSubFinish7521417(arg1)
    print("OnSubFinish7521417")
end

function Quest75214:OnSubStart7521419(arg1)
    print("OnSubStart7521419")
end

function Quest75214:OnSubFinish7521419(arg1)
    print("OnSubFinish7521419")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, nil, nil)
end

function Quest75214:OnSubStart7521414(arg1)
    print("OnSubStart7521414")
    this:CreateQuestNpc(arg1, npcs.Npc14300.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7521414Trigger", "Actor/Gadget/Q7521414Trigger", 70900002, 0, points._Q7521414TriggerPoint_.pos, points._Q7521414TriggerPoint_.rot, true, false, 3)
end

function Quest75214:OnSubFinish7521414(arg1)
    print("OnSubFinish7521414")
    this:PlayerEnterDungeonWithData(1601, 1248, 7521414, 1, datas.PlayerEnterDungeonData, nil, nil)
end

function Quest75214:OnSubStart7521420(arg1)
    print("OnSubStart7521420")
end

function Quest75214:OnSubFinish7521420(arg1)
    print("OnSubFinish7521420")
end

function Quest75214:OnSubStart7521415(arg1)
    print("OnSubStart7521415")
end

function Quest75214:OnSubFinish7521415(arg1)
    print("OnSubFinish7521415")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, nil, nil)
end

function Quest75214:OnSubStart7521421(arg1)
    print("OnSubStart7521421")
    actorMgr:CreateActorWithPos("Q7521421Trigger", "Actor/Gadget/Q7521421Trigger", 70900002, 0, points._Q7521421TriggerPoint_.pos, points._Q7521421TriggerPoint_.rot, true, false, 3)
end

function Quest75214:OnSubFinish7521421(arg1)
    print("OnSubFinish7521421")
end

return Quest75214
