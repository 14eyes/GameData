require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71119 = class("Quest71119", QuestActorProxy)
Quest71119.defaultAlias = "Quest71119"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71119:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71119:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7111901"] = self.OnSubStart7111901,
        ["7111902"] = self.OnSubStart7111902,
        ["7111903"] = self.OnSubStart7111903,
        ["7111904"] = self.OnSubStart7111904,
        ["7111905"] = self.OnSubStart7111905,
        ["7111906"] = self.OnSubStart7111906,
        ["7111911"] = self.OnSubStart7111911,
        ["7111907"] = self.OnSubStart7111907,
        ["7111908"] = self.OnSubStart7111908,
        ["7111909"] = self.OnSubStart7111909,
        ["7111910"] = self.OnSubStart7111910
    }
end

function Quest71119:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7111901"] = self.OnSubFinish7111901,
        ["7111902"] = self.OnSubFinish7111902,
        ["7111903"] = self.OnSubFinish7111903,
        ["7111904"] = self.OnSubFinish7111904,
        ["7111905"] = self.OnSubFinish7111905,
        ["7111906"] = self.OnSubFinish7111906,
        ["7111911"] = self.OnSubFinish7111911,
        ["7111907"] = self.OnSubFinish7111907,
        ["7111908"] = self.OnSubFinish7111908,
        ["7111909"] = self.OnSubFinish7111909,
        ["7111910"] = self.OnSubFinish7111910
    }
end

function Quest71119:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71119:Start()
    print("Start")
end

function Quest71119:OnDestroy()
    print("OnDestroy")
end

function Quest71119:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71119:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71119:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71119:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest71119:OnSubStart7111901(arg1)
    print("OnSubStart7111901")
    this:CreateQuestNpc(arg1, npcs.Npc2270Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2270Data.alias, 1, true)
end

function Quest71119:OnSubFinish7111901(arg1)
    print("OnSubFinish7111901")
end

function Quest71119:OnSubStart7111902(arg1)
    print("OnSubStart7111902")
    this:DailyNpcSafeHideSelf(npcs.Npc2270Data.alias, 1, true)
end

function Quest71119:OnSubFinish7111902(arg1)
    print("OnSubFinish7111902")
end

function Quest71119:OnSubStart7111903(arg1)
    print("OnSubStart7111903")
    this:DailyNpcSafeHideSelf(npcs.Npc2270Data.alias, 1, true)
end

function Quest71119:OnSubFinish7111903(arg1)
    print("OnSubFinish7111903")
end

function Quest71119:OnSubStart7111904(arg1)
    print("OnSubStart7111904")
    this:DailyNpcSafeHideSelf(npcs.Npc2270Data.alias, 1, true)
end

function Quest71119:OnSubFinish7111904(arg1)
    print("OnSubFinish7111904")
end

function Quest71119:OnSubStart7111905(arg1)
    print("OnSubStart7111905")
    this:DailyNpcSafeHideSelf(npcs.Npc2270Data.alias, 1, true)
end

function Quest71119:OnSubFinish7111905(arg1)
    print("OnSubFinish7111905")
end

function Quest71119:OnSubStart7111906(arg1)
    print("OnSubStart7111906")
    this:DailyNpcSafeHideSelf(npcs.Npc2270Data.alias, 1, true)
end

function Quest71119:OnSubFinish7111906(arg1)
    print("OnSubFinish7111906")
    this:SafeDestroyQuestNpc(npcs.Npc2270Data.alias, 3)
end

function Quest71119:OnSubStart7111911(arg1)
    print("OnSubStart7111911")
end

function Quest71119:OnSubFinish7111911(arg1)
    print("OnSubFinish7111911")
    this:CreateQuestNpc(arg1, npcs.Npc2273Data.id, 0)
end

function Quest71119:OnSubStart7111907(arg1)
    print("OnSubStart7111907")
end

function Quest71119:OnSubFinish7111907(arg1)
    print("OnSubFinish7111907")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(711190801, nil, nil, nil, false)
        this:SafeDestroyQuestNpc(npcs.Npc2273Data.alias, 3)
    end)
end

function Quest71119:OnSubStart7111908(arg1)
    print("OnSubStart7111908")
end

function Quest71119:OnSubFinish7111908(arg1)
    print("OnSubFinish7111908")
    this:TransmitPlayerUseCustomizedTplById(arg1, 1, 36)
end

function Quest71119:OnSubStart7111909(arg1)
    print("OnSubStart7111909")
end

function Quest71119:OnSubFinish7111909(arg1)
    print("OnSubFinish7111909")
end

function Quest71119:OnSubStart7111910(arg1)
    print("OnSubStart7111910")
end

function Quest71119:OnSubFinish7111910(arg1)
    print("OnSubFinish7111910")
end

return Quest71119
