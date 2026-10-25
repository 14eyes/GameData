require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500213Talk = class("Q500213Talk", GadgetActorProxy)
Q500213Talk.defaultAlias = "Q500213Talk"
local Q5002ClientConfig = require("Quest/Client/Q5002ClientConfig")

local this
local subIDs = Q5002ClientConfig.SubIDs
local datas = Q5002ClientConfig.Datas
local npcs = Q5002ClientConfig.Npcs
local points = Q5002ClientConfig.Points

function Q500213Talk:OnPostDataPrepare()
    print("Q500213Talk - OnPostDataPrepare")
    this = self
end

function Q500213Talk:OnPostComponentPrepare()
    print("Q500213Talk - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5002)
end

function Q500213Talk:TriggerIn()
    print("Q500213Talk - TriggerIn")
    actorMgr:GetActor("5002"):RequestInteraction(npcs.Npc6055.alias, "", true)
    this:DestroySelf()
end

function Q500213Talk:PreTriggerIn()
    print("Q500213Talk - PreTriggerIn")
end

function Q500213Talk:LightUpTriggerIn()
    print("Q500213Talk - LightUpTriggerIn")
end

function Q500213Talk:TriggerOut()
    print("Q500213Talk - TriggerOut")
end

return Q500213Talk
