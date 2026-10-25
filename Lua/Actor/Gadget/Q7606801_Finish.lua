require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7606801_Finish = class("Q7606801_Finish", GadgetActorProxy)
Q7606801_Finish.defaultAlias = "Q7606801_Finish"
local Q76068ClientConfig = require("Quest/Client/Q76068ClientConfig")

local this
local subIDs = Q76068ClientConfig.SubIDs
local npcs = Q76068ClientConfig.Npcs
local points = Q76068ClientConfig.Points

function Q7606801_Finish:OnPostDataPrepare()
    print("Q7606801_Finish - OnPostDataPrepare")
    this = self
end

function Q7606801_Finish:OnPostComponentPrepare()
    print("Q7606801_Finish - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76068)
end

function Q7606801_Finish:TriggerIn()
    print("Q7606801_Finish - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7606801})
    this:DestroySelf()
end

function Q7606801_Finish:PreTriggerIn()
    print("Q7606801_Finish - PreTriggerIn")
end

function Q7606801_Finish:LightUpTriggerIn()
    print("Q7606801_Finish - LightUpTriggerIn")
end

function Q7606801_Finish:TriggerOut()
    print("Q7606801_Finish - TriggerOut")
end

return Q7606801_Finish
