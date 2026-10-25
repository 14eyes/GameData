require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303614_TriggerInFinish = class("Q303614_TriggerInFinish", GadgetActorProxy)
Q303614_TriggerInFinish.defaultAlias = "Q303614_TriggerInFinish"
local Q3036ClientConfig = require("Quest/Client/Q3036ClientConfig")

local this
local subIDs = Q3036ClientConfig.SubIDs
local datas = Q3036ClientConfig.Datas
local npcs = Q3036ClientConfig.Npcs
local points = Q3036ClientConfig.Points

function Q303614_TriggerInFinish:OnPostDataPrepare()
    print("Q303614_TriggerInFinish - OnPostDataPrepare")
    this = self
end

function Q303614_TriggerInFinish:OnPostComponentPrepare()
    print("Q303614_TriggerInFinish - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3036)
end

function Q303614_TriggerInFinish:TriggerIn()
    print("Q303614_TriggerInFinish - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {303614})
    this:DestroySelf()
end

function Q303614_TriggerInFinish:PreTriggerIn()
    print("Q303614_TriggerInFinish - PreTriggerIn")
end

function Q303614_TriggerInFinish:LightUpTriggerIn()
    print("Q303614_TriggerInFinish - LightUpTriggerIn")
end

function Q303614_TriggerInFinish:TriggerOut()
    print("Q303614_TriggerInFinish - TriggerOut")
end

return Q303614_TriggerInFinish
