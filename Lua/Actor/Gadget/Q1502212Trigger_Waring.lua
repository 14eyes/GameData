require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502212Trigger_Waring = class("Q1502212Trigger_Waring", GadgetActorProxy)
Q1502212Trigger_Waring.defaultAlias = "Q1502212Trigger_Waring"
local Q15022ClientConfig = require("Quest/Client/Q15022ClientConfig")

local this
local subIDs = Q15022ClientConfig.SubIDs
local datas = Q15022ClientConfig.Datas
local npcs = Q15022ClientConfig.Npcs
local points = Q15022ClientConfig.Points

function Q1502212Trigger_Waring:OnPostDataPrepare()
    print("Q1502212Trigger_Waring - OnPostDataPrepare")
    this = self
end

function Q1502212Trigger_Waring:OnPostComponentPrepare()
    print("Q1502212Trigger_Waring - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(20, 420, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15022)
end

function Q1502212Trigger_Waring:TriggerIn()
    print("Q1502212Trigger_Waring - TriggerIn")
end

function Q1502212Trigger_Waring:PreTriggerIn()
    print("Q1502212Trigger_Waring - PreTriggerIn")
end

function Q1502212Trigger_Waring:LightUpTriggerIn()
    print("Q1502212Trigger_Waring - LightUpTriggerIn")
end

function Q1502212Trigger_Waring:TriggerOut()
    print("Q1502212Trigger_Waring - TriggerOut")
    if 320 < actorUtils.GetAvatarPos().y then
        self:ShowTextMapWithParam("QUEST_Message_Q1502212")
    end
end

return Q1502212Trigger_Waring
