require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303527_TriggerIn03 = class("Q303527_TriggerIn03", GadgetActorProxy)
Q303527_TriggerIn03.defaultAlias = "Q303527_TriggerIn03"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303527_TriggerIn03:OnPostDataPrepare()
    print("Q303527_TriggerIn03 - OnPostDataPrepare")
    this = self
end

function Q303527_TriggerIn03:OnPostComponentPrepare()
    print("Q303527_TriggerIn03 - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303527_TriggerIn03:TriggerIn()
    print("Q303527_TriggerIn03 - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {303527})
    this:DestroySelf()
end

function Q303527_TriggerIn03:PreTriggerIn()
    print("Q303527_TriggerIn03 - PreTriggerIn")
end

function Q303527_TriggerIn03:LightUpTriggerIn()
    print("Q303527_TriggerIn03 - LightUpTriggerIn")
end

function Q303527_TriggerIn03:TriggerOut()
    print("Q303527_TriggerIn03 - TriggerOut")
end

return Q303527_TriggerIn03
