require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303412_TriggerIn = class("Q303412_TriggerIn", GadgetActorProxy)
Q303412_TriggerIn.defaultAlias = "Q303412_TriggerIn"
local Q3034ClientConfig = require("Quest/Client/Q3034ClientConfig")

local this
local subIDs = Q3034ClientConfig.SubIDs
local datas = Q3034ClientConfig.Datas
local npcs = Q3034ClientConfig.Npcs
local points = Q3034ClientConfig.Points

function Q303412_TriggerIn:OnPostDataPrepare()
    print("Q303412_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303412_TriggerIn:OnPostComponentPrepare()
    print("Q303412_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3034)
end

function Q303412_TriggerIn:TriggerIn()
    print("Q303412_TriggerIn - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {303412})
    this:DestroySelf()
end

function Q303412_TriggerIn:PreTriggerIn()
    print("Q303412_TriggerIn - PreTriggerIn")
end

function Q303412_TriggerIn:LightUpTriggerIn()
    print("Q303412_TriggerIn - LightUpTriggerIn")
end

function Q303412_TriggerIn:TriggerOut()
    print("Q303412_TriggerIn - TriggerOut")
end

return Q303412_TriggerIn
