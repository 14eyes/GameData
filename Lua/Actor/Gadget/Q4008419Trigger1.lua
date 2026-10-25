require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008419Trigger1 = class("Q4008419Trigger1", GadgetActorProxy)
Q4008419Trigger1.defaultAlias = "Q4008419Trigger1"
local Q40084ClientConfig = require("Quest/Client/Q40084ClientConfig")

local subIDs = Q40084ClientConfig.SubIDs
local npcs = Q40084ClientConfig.Npcs
local gadgets = Q40084ClientConfig.Gadgets
local datas = Q40084ClientConfig.Datas

function Q4008419Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008419Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008419Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4008419)
    self:DestroySelf()
end

function Q4008419Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q4008419Trigger1
