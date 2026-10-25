require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500207Talk = class("Q500207Talk", GadgetActorProxy)
Q500207Talk.defaultAlias = "Q500207Talk"
local Q5002ClientConfig = require("Quest/Client/Q5002ClientConfig")

local this
local subIDs = Q5002ClientConfig.SubIDs
local datas = Q5002ClientConfig.Datas
local npcs = Q5002ClientConfig.Npcs
local points = Q5002ClientConfig.Points

function Q500207Talk:OnPostDataPrepare()
    print("Q500207Talk - OnPostDataPrepare")
    this = self
end

function Q500207Talk:OnPostComponentPrepare()
    print("Q500207Talk - OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5002)
end

function Q500207Talk:TriggerIn()
    print("Q500207Talk - TriggerIn")
end

function Q500207Talk:PreTriggerIn()
    print("Q500207Talk - PreTriggerIn")
end

function Q500207Talk:LightUpTriggerIn()
    print("Q500207Talk - LightUpTriggerIn")
    actorMgr:GetActor("5002"):RequestInteraction(npcs.Npc14209.alias, "", true)
    this:DestroySelf()
end

function Q500207Talk:TriggerOut()
    print("Q500207Talk - TriggerOut")
end

return Q500207Talk
