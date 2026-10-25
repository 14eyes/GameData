require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest410 = class("Quest410", QuestActorProxy)
Quest410.defaultAlias = "Quest410"
local this
local super
local uActor
local mainQuestID = 0

function Quest410:OnPreInit()
    this = self
    super = self.__super
    mainQuestID = this.mainQuestID
    super:OnPreInit()
end

function Quest410:OnPostInit()
    uActor = self.uActor
    super:OnPostInit()
end

local Q410Config = require("Actor/Quest/Q410/Q410Config")

local qiuqiuData = Q410Config.QiuqiuData
local soldierData = Q410Config.SoldierData
local subIDs = Q410Config.SubIDs

function Quest410:CreateUActor(arg1)
    local actor = actorUtils.CreateActor(self, ActorType.QUEST_ACTOR, arg1)
    local questActor = actorUtils.CreateQuestActor(mainQuestID, actor)
    return questActor
end

function Quest410:OnMainStart(arg1) end
function Quest410:OnSubStart(arg1) end
function Quest410:OnSubFinished(arg1) end
function Quest410:OnMainFinished(arg1) end
function Quest410:Start() end
function Quest410:OnDestroy() end
return Quest410
