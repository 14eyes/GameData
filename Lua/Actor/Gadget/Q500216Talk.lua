require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500216Talk = class("Q500216Talk", GadgetActorProxy)
Q500216Talk.defaultAlias = "Q500216Talk"
local Q5002ClientConfig = require("Quest/Client/Q5002ClientConfig")

local this
local subIDs = Q5002ClientConfig.SubIDs
local datas = Q5002ClientConfig.Datas
local npcs = Q5002ClientConfig.Npcs
local points = Q5002ClientConfig.Points

function Q500216Talk:OnPostDataPrepare()
    print("Q500216Talk - OnPostDataPrepare")
    this = self
end

function Q500216Talk:OnPostComponentPrepare()
    print("Q500216Talk - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5002)
end

function Q500216Talk:TriggerIn()
    print("Q500216Talk - TriggerIn")
    actorMgr:GetActor("5002"):RequestInteraction(npcs.Npc14119.alias, "", true)
    this:DestroySelf()
end

function Q500216Talk:PreTriggerIn()
    print("Q500216Talk - PreTriggerIn")
end

function Q500216Talk:LightUpTriggerIn()
    print("Q500216Talk - LightUpTriggerIn")
end

function Q500216Talk:TriggerOut()
    print("Q500216Talk - TriggerOut")
end

return Q500216Talk
