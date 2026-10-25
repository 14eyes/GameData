require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75029 = class("Quest75029", QuestActorProxy)
Quest75029.defaultAlias = "Quest75029"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest75029:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest75029:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7502901"] = self.OnSubStart7502901,
        ["7502905"] = self.OnSubStart7502905,
        ["7502907"] = self.OnSubStart7502907,
        ["7502903"] = self.OnSubStart7502903,
        ["7502904"] = self.OnSubStart7502904,
        ["7502906"] = self.OnSubStart7502906,
        ["7502908"] = self.OnSubStart7502908,
        ["7502902"] = self.OnSubStart7502902
    }
end

function Quest75029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7502901"] = self.OnSubFinish7502901,
        ["7502905"] = self.OnSubFinish7502905,
        ["7502907"] = self.OnSubFinish7502907,
        ["7502903"] = self.OnSubFinish7502903,
        ["7502904"] = self.OnSubFinish7502904,
        ["7502906"] = self.OnSubFinish7502906,
        ["7502908"] = self.OnSubFinish7502908,
        ["7502902"] = self.OnSubFinish7502902
    }
end

function Quest75029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75029:Start()
    print("Start")
end

function Quest75029:OnDestroy()
    print("OnDestroy")
end

function Quest75029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75029:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75029:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75029:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75029:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7502902)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7502907)
    end
end

function Quest75029:OnSubStart7502901(arg1)
    print("OnSubStart7502901")
    this:CreateQuestNpc(arg1, npcs.Npc6136Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q75029Trigger", "Actor/Gadget/Q75029Trigger", 70900002, 0, {x = -1931.522, y = 253.221, z = 9717.232}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75029:OnSubFinish7502901(arg1)
    print("OnSubFinish7502901")
    this:ActorDestroy("Q75029Trigger")
end

function Quest75029:OnSubStart7502905(arg1)
    print("OnSubStart7502905")
end

function Quest75029:OnSubFinish7502905(arg1)
    print("OnSubFinish7502905")
    this:QuestNarratorTask(datas.NarratorWithId7502905, function(arg1_2)
        this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId7502905, 3, nil, nil)
    end)

    this:EnterSceneLookCamera({x = -1932.1, y = 251.5, z = 9717.0}, 1, 3, false, false)
end

function Quest75029:OnSubStart7502907(arg1)
    print("OnSubStart7502907")
end

function Quest75029:OnSubFinish7502907(arg1)
    print("OnSubFinish7502907")
end

function Quest75029:OnSubStart7502903(arg1)
    print("OnSubStart7502903")
end

function Quest75029:OnSubFinish7502903(arg1)
    print("OnSubFinish7502903")
end

function Quest75029:OnSubStart7502904(arg1)
    print("OnSubStart7502904")
    actorMgr:CreateActorWithPos("Q75029Trigger1", "Actor/Gadget/Q75029Trigger1", 70900002, 0, {x = -1928.113, y = 250.422, z = 9714.694}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75029:OnSubFinish7502904(arg1)
    print("OnSubFinish7502904")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6136Data.alias)
end

function Quest75029:OnSubStart7502906(arg1)
    print("OnSubStart7502906")
end

function Quest75029:OnSubFinish7502906(arg1)
    print("OnSubFinish7502906")
    this:ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 0, false, true)
    this:TransmitPlayerById(arg1, 2)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6136Data.alias)
end

function Quest75029:OnSubStart7502908(arg1)
    print("OnSubStart7502908")
    actorMgr:CreateActorWithPos("Q7502908Trigger", "Actor/Gadget/Q7502908Trigger", 70900002, 0, {x = -1425.741, y = 202.287, z = 9305.114}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75029:OnSubFinish7502908(arg1)
    print("OnSubFinish7502908")
end

function Quest75029:OnSubStart7502902(arg1)
    print("OnSubStart7502902")
end

function Quest75029:OnSubFinish7502902(arg1)
    print("OnSubFinish7502902")
end

return Quest75029
