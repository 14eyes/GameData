require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73342 = class("Quest73342", QuestActorProxy)
Quest73342.defaultAlias = "Quest73342"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73342:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73342:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7334201"] = self.OnSubStart7334201,
        ["7334202"] = self.OnSubStart7334202,
        ["7334203"] = self.OnSubStart7334203,
        ["7334204"] = self.OnSubStart7334204,
        ["7334205"] = self.OnSubStart7334205,
        ["7334206"] = self.OnSubStart7334206,
        ["7334207"] = self.OnSubStart7334207
    }
end

function Quest73342:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7334201"] = self.OnSubFinish7334201,
        ["7334202"] = self.OnSubFinish7334202,
        ["7334203"] = self.OnSubFinish7334203,
        ["7334204"] = self.OnSubFinish7334204,
        ["7334205"] = self.OnSubFinish7334205,
        ["7334206"] = self.OnSubFinish7334206,
        ["7334207"] = self.OnSubFinish7334207
    }
end

function Quest73342:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73342:Start()
    print("Start")
end

function Quest73342:OnDestroy()
    print("OnDestroy")
end

function Quest73342:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73342:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73342:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73342:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest73342:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73342:OnSubStart7334201(arg1)
    print("OnSubStart7334201")
end

function Quest73342:OnSubFinish7334201(arg1)
    print("OnSubFinish7334201")
end

function Quest73342:OnSubStart7334202(arg1)
    print("OnSubStart7334202")
end

function Quest73342:OnSubFinish7334202(arg1)
    print("OnSubFinish7334202")
end

function Quest73342:OnSubStart7334203(arg1)
    print("OnSubStart7334203")
end

function Quest73342:OnSubFinish7334203(arg1)
    print("OnSubFinish7334203")
end

function Quest73342:OnSubStart7334204(arg1)
    print("OnSubStart7334204")
end

function Quest73342:OnSubFinish7334204(arg1)
    print("OnSubFinish7334204")
end

function Quest73342:OnSubStart7334205(arg1)
    print("OnSubStart7334205")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20987Data.id, 7334205, 1, 80, 1)
end

function Quest73342:OnSubFinish7334205(arg1)
    print("OnSubFinish7334205")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20987Data.alias)
end

function Quest73342:OnSubStart7334206(arg1)
    print("OnSubStart7334206")
    actorUtils.FinishQuestID(false, 7334206)
end

function Quest73342:OnSubFinish7334206(arg1)
    print("OnSubFinish7334206")
end

function Quest73342:OnSubStart7334207(arg1)
    print("OnSubStart7334207")
end

function Quest73342:OnSubFinish7334207(arg1)
    print("OnSubFinish7334207")
end

return Quest73342
