require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111406monster2 = class("Q7111406monster2", GadgetActorProxy)
Q7111406monster2.defaultAlias = "Q7111406monster2"
local Q71114ClientConfig = require("Quest/Client/Q71114ClientConfig")

local this
local subIDs = Q71114ClientConfig.SubIDs
local datas = Q71114ClientConfig.Datas
local npcs = Q71114ClientConfig.Npcs
local points = Q71114ClientConfig.Points

function Q7111406monster2:OnPostDataPrepare()
    print("Q7111406monster2 - OnPostDataPrepare")
    this = self
end

function Q7111406monster2:OnPostComponentPrepare()
    print("Q7111406monster2 - OnPostComponentPrepare")
    this:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71114)
end

function Q7111406monster2:TriggerIn()
    print("Q7111406monster2 - TriggerIn")
    actorUtils.FinishQuestID(false, 7111405)
    this:DestroySelf()
end

function Q7111406monster2:PreTriggerIn()
    print("Q7111406monster2 - PreTriggerIn")
end

function Q7111406monster2:LightUpTriggerIn()
    print("Q7111406monster2 - LightUpTriggerIn")
end

function Q7111406monster2:TriggerOut()
    print("Q7111406monster2 - TriggerOut")
end

return Q7111406monster2
