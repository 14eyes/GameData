require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local ALiu_Enter = class("ALiu_Enter", GadgetActorProxy)
ALiu_Enter.defaultAlias = "ALiu_Enter"
local Q72166ClientConfig = require("Quest/Client/Q72166ClientConfig")

local subIDs = Q72166ClientConfig.SubIDs
local npcs = Q72166ClientConfig.Npcs
local datas = Q72166ClientConfig.Datas

function ALiu_Enter:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function ALiu_Enter:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function ALiu_Enter:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72166"):FinishQuestID(false, 7216602)
    self:DestroySelf()
end

function ALiu_Enter:TriggerOut()
    print("TriggerOut")
end

return ALiu_Enter
