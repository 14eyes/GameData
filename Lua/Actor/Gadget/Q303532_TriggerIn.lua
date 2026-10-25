require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303532_TriggerIn = class("Q303532_TriggerIn", GadgetActorProxy)
Q303532_TriggerIn.defaultAlias = "Q303532_TriggerIn"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303532_TriggerIn:OnPostDataPrepare()
    print("Q303532_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303532_TriggerIn:OnPostComponentPrepare()
    print("Q303532_TriggerIn - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 60, 50, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303532_TriggerIn:TriggerIn()
    print("Q303532_TriggerIn - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {303532})
    this:DestroySelf()
end

function Q303532_TriggerIn:PreTriggerIn()
    print("Q303532_TriggerIn - PreTriggerIn")
end

function Q303532_TriggerIn:LightUpTriggerIn()
    print("Q303532_TriggerIn - LightUpTriggerIn")
end

function Q303532_TriggerIn:TriggerOut()
    print("Q303532_TriggerIn - TriggerOut")
end

return Q303532_TriggerIn
