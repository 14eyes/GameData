require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q801713Fail = class("Q801713Fail", GadgetActorProxy)
Q801713Fail.defaultAlias = "Q801713Fail"
local Q8017ClientConfig = require("Quest/Client/Q8017ClientConfig")

local this
local subIDs = Q8017ClientConfig.SubIDs
local datas = Q8017ClientConfig.Datas
local npcs = Q8017ClientConfig.Npcs
local points = Q8017ClientConfig.Points

function Q801713Fail:OnPostDataPrepare()
    print("Q801713Fail - OnPostDataPrepare")
    this = self
end

function Q801713Fail:OnPostComponentPrepare()
    print("Q801713Fail - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 8017)
end

function Q801713Fail:TriggerIn()
    print("Q801713Fail - TriggerIn")
end

function Q801713Fail:PreTriggerIn()
    print("Q801713Fail - PreTriggerIn")
end

function Q801713Fail:LightUpTriggerIn()
    print("Q801713Fail - LightUpTriggerIn")
end

function Q801713Fail:TriggerOut()
    print("Q801713Fail - TriggerOut")
    actorUtils.FinishQuestID(true, 801713)
    this:DestroySelf()
end

return Q801713Fail
