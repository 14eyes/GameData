require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7514915 = class("Q7514915", GadgetActorProxy)
Q7514915.defaultAlias = "Q7514915"
local Q75149ClientConfig = require("Quest/Client/Q75149ClientConfig")

local this
local subIDs = Q75149ClientConfig.SubIDs
local datas = Q75149ClientConfig.Datas
local npcs = Q75149ClientConfig.Npcs
local points = Q75149ClientConfig.Points

function Q7514915:OnPostDataPrepare()
    print("Q7514915 - OnPostDataPrepare")
    this = self
end

function Q7514915:OnPostComponentPrepare()
    print("Q7514915 - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75149)
end

function Q7514915:TriggerIn()
    print("Q7514915 - TriggerIn")
    actorUtils.FinishQuestID(false, 7514915)
    this:DestroySelf()
end

function Q7514915:PreTriggerIn()
    print("Q7514915 - PreTriggerIn")
end

function Q7514915:LightUpTriggerIn()
    print("Q7514915 - LightUpTriggerIn")
end

function Q7514915:TriggerOut()
    print("Q7514915 - TriggerOut")
end

return Q7514915
