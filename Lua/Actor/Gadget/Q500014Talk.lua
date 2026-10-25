require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500014Talk = class("Q500014Talk", GadgetActorProxy)
Q500014Talk.defaultAlias = "Q500014Talk"
local Q5000ClientConfig = require("Quest/Client/Q5000ClientConfig")

local this
local subIDs = Q5000ClientConfig.SubIDs
local datas = Q5000ClientConfig.Datas
local npcs = Q5000ClientConfig.Npcs
local points = Q5000ClientConfig.Points

function Q500014Talk:OnPostDataPrepare()
    print("Q500014Talk - OnPostDataPrepare")
    this = self
end

function Q500014Talk:OnPostComponentPrepare()
    print("Q500014Talk - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5000)
end

function Q500014Talk:TriggerIn()
    print("Q500014Talk - TriggerIn")
    actorMgr:GetActor("5000"):RequestInteraction(npcs.Npc1086.alias, "", true)
    this:DestroySelf()
end

function Q500014Talk:PreTriggerIn()
    print("Q500014Talk - PreTriggerIn")
end

function Q500014Talk:LightUpTriggerIn()
    print("Q500014Talk - LightUpTriggerIn")
end

function Q500014Talk:TriggerOut()
    print("Q500014Talk - TriggerOut")
end

return Q500014Talk
