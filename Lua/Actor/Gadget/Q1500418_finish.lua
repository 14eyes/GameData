require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500418_finish = class("Q1500418_finish", GadgetActorProxy)
Q1500418_finish.defaultAlias = "Q1500418_finish"
local Q15004ClientConfig = require("Quest/Client/Q15004ClientConfig")

local this
local subIDs = Q15004ClientConfig.SubIDs
local datas = Q15004ClientConfig.Datas
local npcs = Q15004ClientConfig.Npcs
local points = Q15004ClientConfig.Points

function Q1500418_finish:OnPostDataPrepare()
    print("Q1500418_finish - OnPostDataPrepare")
    this = self
end

function Q1500418_finish:OnPostComponentPrepare()
    print("Q1500418_finish - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15004)
end

function Q1500418_finish:TriggerIn()
    print("Q1500418_finish - TriggerIn")
    actorUtils.FinishQuestID(false, 1500418)
    this:DestroySelf()
end

function Q1500418_finish:PreTriggerIn()
    print("Q1500418_finish - PreTriggerIn")
end

function Q1500418_finish:LightUpTriggerIn()
    print("Q1500418_finish - LightUpTriggerIn")
end

function Q1500418_finish:TriggerOut()
    print("Q1500418_finish - TriggerOut")
end

return Q1500418_finish
