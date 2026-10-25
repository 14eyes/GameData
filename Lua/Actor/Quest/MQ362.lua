require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest362 = class("Quest362", QuestActorProxy)
Quest362.defaultAlias = "Quest362"
local this
local super
local uActor
local mainQuestID = 0

function Quest362:OnPreInit()
    this = self
    super = self.__super
    mainQuestID = this.mainQuestID
    super:OnPreInit()
end

function Quest362:OnPostInit()
    uActor = self.uActor
    super:OnPostInit()
end

local subIDs = require("Actor/Quest/Q362/Q362Config").SubIDs

function Quest362:CreateUActor(arg1)
    local actor = actorUtils.CreateActor(self, ActorType.QUEST_ACTOR, arg1)
    local questActor = actorUtils.CreateQuestActor(mainQuestID, actor)
    return questActor
end

local function func() end

function Quest362:OnEnableInput()
    print("363 Finish: Enable Player Input")
    globalActor:EnablePlayerInput(true)
end

function Quest362:OnMainStart(arg1) end
function Quest362:OnSubStart(arg1) end

function Quest362:OnSubFinished(arg1)
    if arg1.QuestConfigId == subIDs.q36203 then
        func()
    end
end

function Quest362:OnRewind(arg1) end
function Quest362:OnMainFinished(arg1) end
function Quest362:Start() end
function Quest362:OnDestroy() end
return Quest362
