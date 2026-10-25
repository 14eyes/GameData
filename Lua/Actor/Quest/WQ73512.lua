require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73512 = class("Quest73512", QuestActorProxy)
Quest73512.defaultAlias = "Quest73512"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73512:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73512:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7351202"] = self.OnSubStart7351202, ["7351201"] = self.OnSubStart7351201}
end

function Quest73512:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7351202"] = self.OnSubFinish7351202, ["7351201"] = self.OnSubFinish7351201}
end

function Quest73512:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73512:Start()
    print("Start")
end

function Quest73512:OnDestroy()
    print("OnDestroy")
end

function Quest73512:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73512:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73512:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30342Data.alias, 3)
    this:ActorDestroy("Q73512Trigger")
    this:UnCallFunc(function(arg1)
        this:CustmiseFunction()
    end)
end

function Quest73512:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73512:CustmiseFunction()
    this:CallDelay(1, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorMgr:CreateActorWithPos("Q73512Trigger", "Actor/Gadget/Q73512Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7351201_N30342").pos, sceneData:GetDummyPoint(3, "Q7351201_N30342").rot, true, false, 3)
        end)
    end)
end

function Quest73512:OnSubStart7351202(arg1)
    print("OnSubStart7351202")
    if this:GetQuestVar(7351202, 1) == 1 then
        print("73512QuestVar=1")
        actorUtils.FinishQuestID(false, 7351202)
    else
        print("73512QuestVar!=1")
        this:CustmiseFunction()
    end
end

function Quest73512:OnSubFinish7351202(arg1)
    print("OnSubFinish7351202")
end

function Quest73512:OnSubStart7351201(arg1)
    print("OnSubStart7351201")
    this:CreateQuestNpc(arg1, npcs.Npc30342Data.id, 1)
    if this:GetQuestVar(7351201, 1) ~= 1 then
        this:RequestInteraction(npcs.Npc30342Data.alias)
    end
end

function Quest73512:OnSubFinish7351201(arg1)
    print("OnSubFinish7351201")
    this:SafeDestroyQuestNpc(npcs.Npc30342Data.alias, 3)
end

return Quest73512
