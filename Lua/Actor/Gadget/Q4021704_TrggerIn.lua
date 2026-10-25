require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4021704_TrggerIn = class("Q4021704_TrggerIn", GadgetActorProxy)
Q4021704_TrggerIn.defaultAlias = "Q4021704_TrggerIn"
local Q40217ClientConfig = require("Quest/Client/Q40217ClientConfig")

local this
local subIDs = Q40217ClientConfig.SubIDs
local datas = Q40217ClientConfig.Datas
local npcs = Q40217ClientConfig.Npcs
local points = Q40217ClientConfig.Points

function Q4021704_TrggerIn:OnPostDataPrepare()
    print("Q4021704_TrggerIn - OnPostDataPrepare")
    this = self
end

function Q4021704_TrggerIn:OnPostComponentPrepare()
    print("Q4021704_TrggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40217)
end

function Q4021704_TrggerIn:TriggerIn()
    print("Q4021704_TrggerIn - TriggerIn")
    actorMgr:GetActor("40217"):RequestInteraction(npcs.NPC20088.alias, "", true)
    this:DestroySelf()
end

function Q4021704_TrggerIn:PreTriggerIn()
    print("Q4021704_TrggerIn - PreTriggerIn")
end

function Q4021704_TrggerIn:LightUpTriggerIn()
    print("Q4021704_TrggerIn - LightUpTriggerIn")
end

function Q4021704_TrggerIn:TriggerOut()
    print("Q4021704_TrggerIn - TriggerOut")
end

return Q4021704_TrggerIn
