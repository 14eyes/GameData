require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75209 = class("Quest75209", QuestActorProxy)
Quest75209.defaultAlias = "Quest75209"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75209:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75209:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7520901"] = self.OnSubStart7520901,
        ["7520902"] = self.OnSubStart7520902,
        ["7520903"] = self.OnSubStart7520903,
        ["7520904"] = self.OnSubStart7520904,
        ["7520910"] = self.OnSubStart7520910,
        ["7520906"] = self.OnSubStart7520906,
        ["7520907"] = self.OnSubStart7520907,
        ["7520908"] = self.OnSubStart7520908,
        ["7520909"] = self.OnSubStart7520909,
        ["7520905"] = self.OnSubStart7520905
    }
end

function Quest75209:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7520901"] = self.OnSubFinish7520901,
        ["7520902"] = self.OnSubFinish7520902,
        ["7520903"] = self.OnSubFinish7520903,
        ["7520904"] = self.OnSubFinish7520904,
        ["7520910"] = self.OnSubFinish7520910,
        ["7520906"] = self.OnSubFinish7520906,
        ["7520907"] = self.OnSubFinish7520907,
        ["7520908"] = self.OnSubFinish7520908,
        ["7520909"] = self.OnSubFinish7520909,
        ["7520905"] = self.OnSubFinish7520905
    }
end

function Quest75209:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75209:Start()
    print("Start")
end

function Quest75209:OnDestroy()
    print("OnDestroy")
end

function Quest75209:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75209:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75209:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75209:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7520901Trigger")
    this:ActorDestroy("Q7520910Trigger")
end

function Quest75209:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75209:OnSubStart7520901(arg1)
    print("OnSubStart7520901")
    this:CreateQuestNpc(arg1, npcs.Npc6547_1.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7520901Trigger", "Actor/Gadget/Q7520901Trigger", 70900002, 0, points._Q7520901TriggerPoint_.pos, points._Q7520901TriggerPoint_.rot, true, false, 3)
end

function Quest75209:OnSubFinish7520901(arg1)
    print("OnSubFinish7520901")
end

function Quest75209:OnSubStart7520902(arg1)
    print("OnSubStart7520902")
end

function Quest75209:OnSubFinish7520902(arg1)
    print("OnSubFinish7520902")
end

function Quest75209:OnSubStart7520903(arg1)
    print("OnSubStart7520903")
end

function Quest75209:OnSubFinish7520903(arg1)
    print("OnSubFinish7520903")
end

function Quest75209:OnSubStart7520904(arg1)
    print("OnSubStart7520904")
    this:CreateQuestNpc(arg1, npcs.Npc6547_1.id, 0, false, 0)
end

function Quest75209:OnSubFinish7520904(arg1)
    print("OnSubFinish7520904")
end

function Quest75209:OnSubStart7520910(arg1)
    print("OnSubStart7520910")
    actorMgr:CreateActorWithPos("Q7520910Trigger", "Actor/Gadget/Q7520910Trigger", 70900002, 0, points._Q7520910TriggerPoint_.pos, points._Q7520910TriggerPoint_.rot, true, false, 3)
    this:TransmitPlayerWithDialogTextByQuestId(7520910, 1, datas.DialogIdsData_2, 0, nil, nil, nil)
end

function Quest75209:OnSubFinish7520910(arg1)
    print("OnSubFinish7520910")
end

function Quest75209:OnSubStart7520906(arg1)
    print("OnSubStart7520906")
end

function Quest75209:OnSubFinish7520906(arg1)
    print("OnSubFinish7520906")
end

function Quest75209:OnSubStart7520907(arg1)
    print("OnSubStart7520907")
    this:CreateQuestNpc(arg1, npcs.Npc6547_1.id, 0, false, 0)
end

function Quest75209:OnSubFinish7520907(arg1)
    print("OnSubFinish7520907")
end

function Quest75209:OnSubStart7520908(arg1)
    print("OnSubStart7520908")
end

function Quest75209:OnSubFinish7520908(arg1)
    print("OnSubFinish7520908")
end

function Quest75209:OnSubStart7520909(arg1)
    print("OnSubStart7520909")
end

function Quest75209:OnSubFinish7520909(arg1)
    print("OnSubFinish7520909")
end

function Quest75209:OnSubStart7520905(arg1)
    print("OnSubStart7520905")
    this:CreateQuestNpc(arg1, npcs.Npc6547_1.id, 0, false, 0)
end

function Quest75209:OnSubFinish7520905(arg1)
    print("OnSubFinish7520905")
end

return Quest75209
