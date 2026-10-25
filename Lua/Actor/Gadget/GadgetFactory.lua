local ActorManager = actorMgr

if not ActorManager then
    ActorManager = require("Actor/ActorManager")
end

actorMgr = ActorManager
local GadgetFactory = {}
GadgetFactory.PATH_QUEST_AREA = "Actor/Gadget/QuestArea"

function GadgetFactory:PostProcessCreateActor(actor)
    local preGetAlias = actor:PreGetAlias()
    actor:OnPreInit()
    if self == nil or self == "" then
        if preGetAlias ~= nil then
            self = preGetAlias
        else
            self = actor.defaultAlias
        end
    end

    actor.alias = self
    actorMgr.ActorDic[self] = actor
    actor:OnInit(self)
    actor:OnPostInit()
end

function GadgetFactory:CreateQuestArea(configID, bornPos, areaRadius, targetTime, questAreaInHandler, questAreaOutHandler, questAreaDelayOutHandler)
    local actor = actorMgr:GetActor(self)
    if actor == nil then
        actor = require(GadgetFactory.PATH_QUEST_AREA):new()
        actor.configID = configID
        actor.bornPos = bornPos
        actor.areaRadius = areaRadius
        actor.targetTime = targetTime
        actor.questAreaInHandler = questAreaInHandler
        actor.questAreaOutHandler = questAreaOutHandler
        actor.questAreaDelayOutHandler = questAreaDelayOutHandler
        actor.isAutoStart = true
        GadgetFactory.PostProcessCreateActor(self, actor)
    else
        if actor.SetPos ~= nil then
            actor:SetPos(bornPos)
        end
    end

    return actor
end

return GadgetFactory
