require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q503409Finish = class("Q503409Finish", GadgetActorProxy)
Q503409Finish.defaultAlias = "Q503409Finish"
local Q5034ClientConfig = require("Quest/Client/Q5034ClientConfig")

local this
local subIDs = Q5034ClientConfig.SubIDs
local datas = Q5034ClientConfig.Datas
local npcs = Q5034ClientConfig.Npcs
local points = Q5034ClientConfig.Points

function Q503409Finish:OnPostDataPrepare()
    print("Q503409Finish - OnPostDataPrepare")
    this = self
end

function Q503409Finish:OnPostComponentPrepare()
    print("Q503409Finish - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5034)
end

function Q503409Finish:TriggerIn()
    print("Q503409Finish - TriggerIn")
    actorUtils.FinishQuestID(false, 503409)
    this:DestroySelf()
end

function Q503409Finish:PreTriggerIn()
    print("Q503409Finish - PreTriggerIn")
end

function Q503409Finish:LightUpTriggerIn()
    print("Q503409Finish - LightUpTriggerIn")
end

function Q503409Finish:TriggerOut()
    print("Q503409Finish - TriggerOut")
end

return Q503409Finish
