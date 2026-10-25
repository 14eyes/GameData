require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303509_TriggerIn = class("Q303509_TriggerIn", GadgetActorProxy)
Q303509_TriggerIn.defaultAlias = "Q303509_TriggerIn"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303509_TriggerIn:OnPostDataPrepare()
    print("Q303509_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303509_TriggerIn:OnPostComponentPrepare()
    print("Q303509_TriggerIn - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(18, 45, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303509_TriggerIn:TriggerIn()
    print("Q303509_TriggerIn - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {303509})
    this:DestroySelf()
end

function Q303509_TriggerIn:PreTriggerIn()
    print("Q303509_TriggerIn - PreTriggerIn")
end

function Q303509_TriggerIn:LightUpTriggerIn()
    print("Q303509_TriggerIn - LightUpTriggerIn")
end

function Q303509_TriggerIn:TriggerOut()
    print("Q303509_TriggerIn - TriggerOut")
end

return Q303509_TriggerIn
