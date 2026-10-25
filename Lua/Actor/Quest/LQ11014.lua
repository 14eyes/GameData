require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11014 = class("Quest11014", QuestActorProxy)
Quest11014.defaultAlias = "Quest11014"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11014:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1101420"] = self.OnSubStart1101420,
        ["1101421"] = self.OnSubStart1101421,
        ["1101401"] = self.OnSubStart1101401,
        ["1101402"] = self.OnSubStart1101402,
        ["1101417"] = self.OnSubStart1101417,
        ["1101418"] = self.OnSubStart1101418,
        ["1101403"] = self.OnSubStart1101403,
        ["1101404"] = self.OnSubStart1101404,
        ["1101405"] = self.OnSubStart1101405,
        ["1101411"] = self.OnSubStart1101411,
        ["1101412"] = self.OnSubStart1101412,
        ["1101413"] = self.OnSubStart1101413,
        ["1101414"] = self.OnSubStart1101414,
        ["1101415"] = self.OnSubStart1101415,
        ["1101416"] = self.OnSubStart1101416,
        ["1101406"] = self.OnSubStart1101406,
        ["1101407"] = self.OnSubStart1101407,
        ["1101410"] = self.OnSubStart1101410,
        ["1101408"] = self.OnSubStart1101408,
        ["1101409"] = self.OnSubStart1101409,
        ["1101419"] = self.OnSubStart1101419
    }
end

function Quest11014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1101420"] = self.OnSubFinish1101420,
        ["1101421"] = self.OnSubFinish1101421,
        ["1101401"] = self.OnSubFinish1101401,
        ["1101402"] = self.OnSubFinish1101402,
        ["1101417"] = self.OnSubFinish1101417,
        ["1101418"] = self.OnSubFinish1101418,
        ["1101403"] = self.OnSubFinish1101403,
        ["1101404"] = self.OnSubFinish1101404,
        ["1101405"] = self.OnSubFinish1101405,
        ["1101411"] = self.OnSubFinish1101411,
        ["1101412"] = self.OnSubFinish1101412,
        ["1101413"] = self.OnSubFinish1101413,
        ["1101414"] = self.OnSubFinish1101414,
        ["1101415"] = self.OnSubFinish1101415,
        ["1101416"] = self.OnSubFinish1101416,
        ["1101406"] = self.OnSubFinish1101406,
        ["1101407"] = self.OnSubFinish1101407,
        ["1101410"] = self.OnSubFinish1101410,
        ["1101408"] = self.OnSubFinish1101408,
        ["1101409"] = self.OnSubFinish1101409,
        ["1101419"] = self.OnSubFinish1101419
    }
end

function Quest11014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1101401"] = self.OnSubFailed1101401,
        ["1101402"] = self.OnSubFailed1101402,
        ["1101417"] = self.OnSubFailed1101417,
        ["1101418"] = self.OnSubFailed1101418,
        ["1101403"] = self.OnSubFailed1101403,
        ["1101404"] = self.OnSubFailed1101404,
        ["1101405"] = self.OnSubFailed1101405,
        ["1101411"] = self.OnSubFailed1101411,
        ["1101412"] = self.OnSubFailed1101412,
        ["1101413"] = self.OnSubFailed1101413,
        ["1101414"] = self.OnSubFailed1101414,
        ["1101415"] = self.OnSubFailed1101415,
        ["1101416"] = self.OnSubFailed1101416,
        ["1101406"] = self.OnSubFailed1101406,
        ["1101407"] = self.OnSubFailed1101407,
        ["1101410"] = self.OnSubFailed1101410,
        ["1101408"] = self.OnSubFailed1101408,
        ["1101409"] = self.OnSubFailed1101409
    }
end

function Quest11014:Start()
    print("Start")
end

function Quest11014:OnDestroy()
    print("OnDestroy")
end

function Quest11014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11014:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11014:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest11014:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest11014:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest11014:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest11014:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest11014:OnSubStart1101420(arg1)
    print("OnSubStart1101420")
end

function Quest11014:OnSubFinish1101420(arg1)
    print("OnSubFinish1101420")
end

function Quest11014:OnSubStart1101421(arg1)
    print("OnSubStart1101421")
    actorMgr:CreateActorWithPos("Q11014Trigger1", "Actor/Gadget/Q11014Trigger1", 70900002, 0, {x = -502.1714, y = 200, z = -89.35849}, {x = 0, y = 0, z = 0}, true, false)
    actorMgr:CreateActorWithPos("Q11014Trigger2", "Actor/Gadget/Q11014Trigger2", 70900002, 0, {x = -307.3641, y = 200, z = -787.9749}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest11014:OnSubFinish1101421(arg1)
    print("OnSubFinish1101421")
    self:ActorDestroy("Q11014Trigger1")
    self:ActorDestroy("Q11014Trigger2")
end

function Quest11014:OnSubStart1101401(arg1)
    print("OnSubStart1101401")
    self:NpcCreate(arg1, npcs.Npc2143Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc1046Data.id, 3)
    self:NpcCreate(arg1, npcs.Npc1031Data.id, 4)
    self:NpcCreate(arg1, npcs.Npc12344Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc12345Data.id, 7)
    self:NpcCreate(arg1, npcs.Npc12346Data.id, 8)
    self:NpcCreate(arg1, npcs.Npc12371Data.id, 9)
    self:CreateQuestNpc(arg1, npcs.Npc12348Data.id, 10)
    self:NpcCreate(arg1, npcs.Npc1016Data.id, 11)
    self:NpcCreate(arg1, npcs.Npc10233Data.id, 12)
    self:NpcCreate(arg1, npcs.Npc12372Data.id, 13)
end

function Quest11014:OnSubFinish1101401(arg1)
    print("OnSubFinish1101401")
    self:NpcDestroy(npcs.Npc2143Data.alias, 3)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc1046Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc1031Data.alias)
    self:NarratorOnlyTaskByData(datas.NarratorWithIdStart)
end

function Quest11014:OnSubFailed1101401(arg1)
    print("OnSubFailed1101401")
end

function Quest11014:OnSubStart1101402(arg1)
    print("OnSubStart1101402")
    self:NpcCreate(arg1, npcs.Npc2048Data.id, 1)
end

function Quest11014:OnSubFinish1101402(arg1)
    print("OnSubFinish1101402")
    self:NpcDestroy(npcs.Npc2048Data.alias, 3)
end

function Quest11014:OnSubFailed1101402(arg1)
    print("OnSubFailed1101402")
end

function Quest11014:OnSubStart1101417(arg1)
    print("OnSubStart1101417")
    actorMgr:CreateActorWithPos("Q11014Trigger", "Actor/Gadget/Q11014Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q11014ShenheSearch2").pos, sceneData:GetDummyPoint(3, "Q11014ShenheSearch2").rot, true, false, 3)
end

function Quest11014:OnSubFinish1101417(arg1)
    print("OnSubFinish1101417")
    self:ActorDestroy("Q11014Trigger")
end

function Quest11014:OnSubFailed1101417(arg1)
    print("OnSubFailed1101417")
end

function Quest11014:OnSubStart1101418(arg1)
    print("OnSubStart1101418")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1046Data.id, 2, npcs.Npc1046Data.alias)
end

function Quest11014:OnSubFinish1101418(arg1)
    print("OnSubFinish1101418")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc1046Data.alias)
end

function Quest11014:OnSubFailed1101418(arg1)
    print("OnSubFailed1101418")
end

function Quest11014:OnSubStart1101403(arg1)
    print("OnSubStart1101403")
    self:CreateQuestNpc(arg1, npcs.Npc12333Data.id, 2)
end

function Quest11014:OnSubFinish1101403(arg1)
    print("OnSubFinish1101403")
    self:NarratorOnlyTaskByData(datas.NarratorWithIdMine1Collect)
end

function Quest11014:OnSubFailed1101403(arg1)
    print("OnSubFailed1101403")
end

function Quest11014:OnSubStart1101404(arg1)
    print("OnSubStart1101404")
end

function Quest11014:OnSubFinish1101404(arg1)
    print("OnSubFinish1101404")
end

function Quest11014:OnSubFailed1101404(arg1)
    print("OnSubFailed1101404")
end

function Quest11014:OnSubStart1101405(arg1)
    print("OnSubStart1101405")
end

function Quest11014:OnSubFinish1101405(arg1)
    print("OnSubFinish1101405")
end

function Quest11014:OnSubFailed1101405(arg1)
    print("OnSubFailed1101405")
end

function Quest11014:OnSubStart1101411(arg1)
    print("OnSubStart1101411")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1046Data.id, 1, npcs.Npc1046Data.alias)
end

function Quest11014:OnSubFinish1101411(arg1)
    print("OnSubFinish1101411")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc1046Data.alias)
end

function Quest11014:OnSubFailed1101411(arg1)
    print("OnSubFailed1101411")
end

function Quest11014:OnSubStart1101412(arg1)
    print("OnSubStart1101412")
end

function Quest11014:OnSubFinish1101412(arg1)
    print("OnSubFinish1101412")
end

function Quest11014:OnSubFailed1101412(arg1)
    print("OnSubFailed1101412")
end

function Quest11014:OnSubStart1101413(arg1)
    print("OnSubStart1101413")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1046Data.id, 1, npcs.Npc1046Data.alias)
end

function Quest11014:OnSubFinish1101413(arg1)
    print("OnSubFinish1101413")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc1046Data.alias)
end

function Quest11014:OnSubFailed1101413(arg1)
    print("OnSubFailed1101413")
end

function Quest11014:OnSubStart1101414(arg1)
    print("OnSubStart1101414")
end

function Quest11014:OnSubFinish1101414(arg1)
    print("OnSubFinish1101414")
    self:NarratorOnlyTaskByData(datas.NarratorWithIdPaper1Collect)
end

function Quest11014:OnSubFailed1101414(arg1)
    print("OnSubFailed1101414")
end

function Quest11014:OnSubStart1101415(arg1)
    print("OnSubStart1101415")
end

function Quest11014:OnSubFinish1101415(arg1)
    print("OnSubFinish1101415")
end

function Quest11014:OnSubFailed1101415(arg1)
    print("OnSubFailed1101415")
end

function Quest11014:OnSubStart1101416(arg1)
    print("OnSubStart1101416")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1046Data.id, 1, npcs.Npc1046Data.alias)
end

function Quest11014:OnSubFinish1101416(arg1)
    print("OnSubFinish1101416")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc1046Data.alias)
end

function Quest11014:OnSubFailed1101416(arg1)
    print("OnSubFailed1101416")
end

function Quest11014:OnSubStart1101406(arg1)
    print("OnSubStart1101406")
end

function Quest11014:OnSubFinish1101406(arg1)
    print("OnSubFinish1101406")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc1045Data.alias)
end

function Quest11014:OnSubFailed1101406(arg1)
    print("OnSubFailed1101406")
end

function Quest11014:OnSubStart1101407(arg1)
    print("OnSubStart1101407")
    self:NpcCreate(arg1, npcs.XiaoData.id, 2)
end

function Quest11014:OnSubFinish1101407(arg1)
    print("OnSubFinish1101407")
    self:SafeDestroyQuestNpc(npcs.Npc12333Data.alias, 3)
    self:NarratorOnlyTaskByData(datas.NarratorWithIdMine2Collect)
end

function Quest11014:OnSubFailed1101407(arg1)
    print("OnSubFailed1101407")
end

function Quest11014:OnSubStart1101410(arg1)
    print("OnSubStart1101410")
    self:NpcCreate(arg1, npcs.Npc2048Data.id, 1)
end

function Quest11014:OnSubFinish1101410(arg1)
    print("OnSubFinish1101410")
    self:NpcDestroy(npcs.Npc2048Data.alias, 3)
    self:NpcDestroy(npcs.Npc12344Data.alias, 3)
    self:NpcDestroy(npcs.Npc12345Data.alias, 3)
    self:NpcDestroy(npcs.Npc12346Data.alias, 3)
    self:NpcDestroy(npcs.Npc12371Data.alias, 3)
    self:NpcDestroy(npcs.Npc12348Data.alias, 3)
    self:NpcDestroy(npcs.Npc1016Data.alias, 3)
    self:NpcDestroy(npcs.Npc10233Data.alias, 3)
    self:NpcDestroy(npcs.Npc12372Data.alias, 3)
end

function Quest11014:OnSubFailed1101410(arg1)
    print("OnSubFailed1101410")
end

function Quest11014:OnSubStart1101408(arg1)
    print("OnSubStart1101408")
end

function Quest11014:OnSubFinish1101408(arg1)
    print("OnSubFinish1101408")
end

function Quest11014:OnSubFailed1101408(arg1)
    print("OnSubFailed1101408")
end

function Quest11014:OnSubStart1101409(arg1)
    print("OnSubStart1101409")
end

function Quest11014:OnSubFinish1101409(arg1)
    print("OnSubFinish1101409")
end

function Quest11014:OnSubFailed1101409(arg1)
    print("OnSubFailed1101409")
end

function Quest11014:OnSubStart1101419(arg1)
    print("OnSubStart1101419")
end

function Quest11014:OnSubFinish1101419(arg1)
    print("OnSubFinish1101419")
end

return Quest11014
