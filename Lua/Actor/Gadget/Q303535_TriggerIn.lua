require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303535_TriggerIn = class("Q303535_TriggerIn", GadgetActorProxy)
Q303535_TriggerIn.defaultAlias = "Q303535_TriggerIn"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303535_TriggerIn:OnPostDataPrepare()
    print("Q303535_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303535_TriggerIn:OnPostComponentPrepare()
    print("Q303535_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303535_TriggerIn:TriggerIn()
    print("Q303535_TriggerIn - TriggerIn")
    this:DestroySelf()
end

function Q303535_TriggerIn:PreTriggerIn()
    print("Q303535_TriggerIn - PreTriggerIn")
end

function Q303535_TriggerIn:LightUpTriggerIn()
    print("Q303535_TriggerIn - LightUpTriggerIn")
    actorUtils.FinishQuestWithParam({false}, {303535})
end

function Q303535_TriggerIn:TriggerOut()
    print("Q303535_TriggerIn - TriggerOut")
end

return Q303535_TriggerIn
