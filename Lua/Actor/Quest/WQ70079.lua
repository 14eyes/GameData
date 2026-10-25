require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70079 = class("Quest70079", QuestActorProxy)
Quest70079.defaultAlias = "Quest70079"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest70079:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70079:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7007902"] = self.OnSubStart7007902, ["7007901"] = self.OnSubStart7007901}
end

function Quest70079:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7007902"] = self.OnSubFinish7007902, ["7007901"] = self.OnSubFinish7007901}
end

function Quest70079:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7007902"] = self.OnSubFailed7007902}
end

function Quest70079:Start()
    print("Start")
end

function Quest70079:OnDestroy()
    print("OnDestroy")
end

function Quest70079:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70079:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70079:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70079:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7007901Trigger", nil)
end

function Quest70079:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest70079:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70079:OnSubStart7007902(arg1)
    print("OnSubStart7007902")
    this:CreateQuestNpc(arg1, npcs.Npc1749.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1749.alias, 70079):DoFreeStyle(1240, true, nil, true, true, false, false)
end

function Quest70079:OnSubFinish7007902(arg1)
    print("OnSubFinish7007902")
    this:NpcDestroyImmediately(3, npcs.Npc1749.alias)
    this:QuestNarratorTask(datas.NarratorWithId_7007898, nil)
end

function Quest70079:OnSubFailed7007902(arg1)
    print("OnSubFailed7007902")
    this:RecycleAllRes()
end

function Quest70079:OnSubStart7007901(arg1)
    print("OnSubStart7007901")
    this:CreateQuestNpc(arg1, npcs.Npc1749.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1749.alias, 70079):DoFreeStyle(1240, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7007901Trigger", "Actor/Gadget/Q7007901Trigger", 70900002, 0, points._Q7007901TriggerPoint_.pos, points._Q7007901TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest70079:OnSubFinish7007901(arg1)
    print("OnSubFinish7007901")
end

return Quest70079
