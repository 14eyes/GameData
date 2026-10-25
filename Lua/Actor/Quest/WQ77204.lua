require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77204 = class("Quest77204", QuestActorProxy)
Quest77204.defaultAlias = "Quest77204"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77204:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77204:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7720401"] = self.OnSubStart7720401,
        ["7720404"] = self.OnSubStart7720404,
        ["7720402"] = self.OnSubStart7720402,
        ["7720403"] = self.OnSubStart7720403
    }
end

function Quest77204:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7720401"] = self.OnSubFinish7720401,
        ["7720404"] = self.OnSubFinish7720404,
        ["7720402"] = self.OnSubFinish7720402,
        ["7720403"] = self.OnSubFinish7720403
    }
end

function Quest77204:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7720402"] = self.OnSubFailed7720402}
end

function Quest77204:Start()
    print("Start")
end

function Quest77204:OnDestroy()
    print("OnDestroy")
end

function Quest77204:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77204:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77204:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77204:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7720402Trigger", 77204)
end

function Quest77204:ActorDestroy(arg1, arg2)
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

function Quest77204:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77204:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77204:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest77204:OnSubStart7720401(arg1)
    print("OnSubStart7720401")
    this:CreateQuestNpc(arg1, npcs.Npc7591.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7591.alias, 77204):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc1332.id, 0, 5, 7720401)
    this:GetQuestNpcActor(npcs.Npc1332.alias, 77204):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest77204:OnSubFinish7720401(arg1)
    print("OnSubFinish7720401")
    this:NpcDestroyImmediately(3, npcs.Npc7591.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1332.alias)
    this:PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2153, dungeonId = 1340, questId = 7720401, questPointCfgId = 1}, datas.__EmbedClientConfig_3, nil, nil)
end

function Quest77204:OnSubStart7720404(arg1)
    print("OnSubStart7720404")
end

function Quest77204:OnSubFinish7720404(arg1)
    print("OnSubFinish7720404")
end

function Quest77204:OnSubStart7720402(arg1)
    print("OnSubStart7720402")
    this:CreateQuestNpc(arg1, npcs.Npc7591.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7720402Trigger", "Actor/Gadget/Q7720402Trigger", 70900002, 0, points._Q7720402TriggerPoint_.pos, points._Q7720402TriggerPoint_.rot, true, false, 20372, nil, 0, 77204)
end

function Quest77204:OnSubFinish7720402(arg1)
    print("OnSubFinish7720402")
    this:NpcDestroyImmediately(20372, npcs.Npc7591.alias)
    this:ActorDestroy("Q7720402Trigger", 77204)
end

function Quest77204:OnSubFailed7720402(arg1)
    print("OnSubFailed7720402")
    this:RecycleAllRes()
end

function Quest77204:OnSubStart7720403(arg1)
    print("OnSubStart7720403")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1332.id, 0, 7720403, 15, true)
end

function Quest77204:OnSubFinish7720403(arg1)
    print("OnSubFinish7720403")
    this:NpcDestroyImmediately(3, npcs.Npc1332.alias)
end

return Quest77204
