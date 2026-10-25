require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500122Talk = class("Q500122Talk", GadgetActorProxy)
Q500122Talk.defaultAlias = "Q500122Talk"
local Q5001ClientConfig = require("Quest/Client/Q5001ClientConfig")

local this
local subIDs = Q5001ClientConfig.SubIDs
local datas = Q5001ClientConfig.Datas
local npcs = Q5001ClientConfig.Npcs
local points = Q5001ClientConfig.Points

function Q500122Talk:OnPostDataPrepare()
    print("Q500122Talk - OnPostDataPrepare")
    this = self
end

function Q500122Talk:OnPostComponentPrepare()
    print("Q500122Talk - OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5001)
end

function Q500122Talk:TriggerIn()
    print("Q500122Talk - TriggerIn")
    actorMgr:GetActor("5001"):RequestInteraction(npcs.Npc1086.alias, "", true)
    this:DestroySelf()
end

function Q500122Talk:PreTriggerIn()
    print("Q500122Talk - PreTriggerIn")
end

function Q500122Talk:LightUpTriggerIn()
    print("Q500122Talk - LightUpTriggerIn")
end

function Q500122Talk:TriggerOut()
    print("Q500122Talk - TriggerOut")
end

return Q500122Talk
