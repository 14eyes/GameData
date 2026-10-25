require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79004 = class("Quest79004", QuestActorProxy)
Quest79004.defaultAlias = "Quest79004"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest79004:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7900401"] = self.OnSubStart7900401,
        ["7900402"] = self.OnSubStart7900402,
        ["7900412"] = self.OnSubStart7900412,
        ["7900413"] = self.OnSubStart7900413,
        ["7900414"] = self.OnSubStart7900414,
        ["7900415"] = self.OnSubStart7900415,
        ["7900416"] = self.OnSubStart7900416,
        ["7900405"] = self.OnSubStart7900405,
        ["7900406"] = self.OnSubStart7900406,
        ["7900407"] = self.OnSubStart7900407,
        ["7900408"] = self.OnSubStart7900408,
        ["7900409"] = self.OnSubStart7900409,
        ["7900411"] = self.OnSubStart7900411,
        ["7900410"] = self.OnSubStart7900410,
        ["7900422"] = self.OnSubStart7900422,
        ["7900403"] = self.OnSubStart7900403,
        ["7900404"] = self.OnSubStart7900404,
        ["7900417"] = self.OnSubStart7900417,
        ["7900419"] = self.OnSubStart7900419,
        ["7900420"] = self.OnSubStart7900420,
        ["7900421"] = self.OnSubStart7900421,
        ["7900418"] = self.OnSubStart7900418
    }
end

function Quest79004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7900401"] = self.OnSubFinish7900401,
        ["7900402"] = self.OnSubFinish7900402,
        ["7900412"] = self.OnSubFinish7900412,
        ["7900413"] = self.OnSubFinish7900413,
        ["7900414"] = self.OnSubFinish7900414,
        ["7900415"] = self.OnSubFinish7900415,
        ["7900416"] = self.OnSubFinish7900416,
        ["7900405"] = self.OnSubFinish7900405,
        ["7900406"] = self.OnSubFinish7900406,
        ["7900407"] = self.OnSubFinish7900407,
        ["7900408"] = self.OnSubFinish7900408,
        ["7900409"] = self.OnSubFinish7900409,
        ["7900411"] = self.OnSubFinish7900411,
        ["7900410"] = self.OnSubFinish7900410,
        ["7900422"] = self.OnSubFinish7900422,
        ["7900403"] = self.OnSubFinish7900403,
        ["7900404"] = self.OnSubFinish7900404,
        ["7900417"] = self.OnSubFinish7900417,
        ["7900419"] = self.OnSubFinish7900419,
        ["7900420"] = self.OnSubFinish7900420,
        ["7900421"] = self.OnSubFinish7900421,
        ["7900418"] = self.OnSubFinish7900418
    }
end

function Quest79004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7900401"] = self.OnSubFailed7900401,
        ["7900402"] = self.OnSubFailed7900402,
        ["7900412"] = self.OnSubFailed7900412,
        ["7900413"] = self.OnSubFailed7900413,
        ["7900414"] = self.OnSubFailed7900414,
        ["7900415"] = self.OnSubFailed7900415,
        ["7900416"] = self.OnSubFailed7900416,
        ["7900405"] = self.OnSubFailed7900405,
        ["7900406"] = self.OnSubFailed7900406,
        ["7900407"] = self.OnSubFailed7900407,
        ["7900408"] = self.OnSubFailed7900408,
        ["7900409"] = self.OnSubFailed7900409,
        ["7900411"] = self.OnSubFailed7900411,
        ["7900410"] = self.OnSubFailed7900410,
        ["7900422"] = self.OnSubFailed7900422,
        ["7900403"] = self.OnSubFailed7900403,
        ["7900404"] = self.OnSubFailed7900404,
        ["7900417"] = self.OnSubFailed7900417,
        ["7900419"] = self.OnSubFailed7900419,
        ["7900420"] = self.OnSubFailed7900420,
        ["7900421"] = self.OnSubFailed7900421,
        ["7900418"] = self.OnSubFailed7900418
    }
end

function Quest79004:Start()
    print("Start")
end

function Quest79004:OnDestroy()
    print("OnDestroy")
end

function Quest79004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79004:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:LightNotifyTo(npcs.Npc1642Data.alias, 0, true)
end

function Quest79004:OnSubStart7900401(arg1)
    print("OnSubStart7900401")
end

function Quest79004:OnSubFinish7900401(arg1)
    print("OnSubFinish7900401")
end

function Quest79004:OnSubFailed7900401(arg1)
    print("OnSubFailed7900401")
end

function Quest79004:OnSubStart7900402(arg1)
    print("OnSubStart7900402")
end

function Quest79004:OnSubFinish7900402(arg1)
    print("OnSubFinish7900402")
end

function Quest79004:OnSubFailed7900402(arg1)
    print("OnSubFailed7900402")
end

function Quest79004:OnSubStart7900412(arg1)
    print("OnSubStart7900412")
end

function Quest79004:OnSubFinish7900412(arg1)
    print("OnSubFinish7900412")
end

function Quest79004:OnSubFailed7900412(arg1)
    print("OnSubFailed7900412")
end

function Quest79004:OnSubStart7900413(arg1)
    print("OnSubStart7900413")
end

function Quest79004:OnSubFinish7900413(arg1)
    print("OnSubFinish7900413")
end

function Quest79004:OnSubFailed7900413(arg1)
    print("OnSubFailed7900413")
end

function Quest79004:OnSubStart7900414(arg1)
    print("OnSubStart7900414")
end

function Quest79004:OnSubFinish7900414(arg1)
    print("OnSubFinish7900414")
end

function Quest79004:OnSubFailed7900414(arg1)
    print("OnSubFailed7900414")
end

function Quest79004:OnSubStart7900415(arg1)
    print("OnSubStart7900415")
end

function Quest79004:OnSubFinish7900415(arg1)
    print("OnSubFinish7900415")
end

function Quest79004:OnSubFailed7900415(arg1)
    print("OnSubFailed7900415")
end

function Quest79004:OnSubStart7900416(arg1)
    print("OnSubStart7900416")
end

function Quest79004:OnSubFinish7900416(arg1)
    print("OnSubFinish7900416")
end

function Quest79004:OnSubFailed7900416(arg1)
    print("OnSubFailed7900416")
end

function Quest79004:OnSubStart7900405(arg1)
    print("OnSubStart7900405")
end

function Quest79004:OnSubFinish7900405(arg1)
    print("OnSubFinish7900405")
end

function Quest79004:OnSubFailed7900405(arg1)
    print("OnSubFailed7900405")
end

function Quest79004:OnSubStart7900406(arg1)
    print("OnSubStart7900406")
end

function Quest79004:OnSubFinish7900406(arg1)
    print("OnSubFinish7900406")
end

function Quest79004:OnSubFailed7900406(arg1)
    print("OnSubFailed7900406")
end

function Quest79004:OnSubStart7900407(arg1)
    print("OnSubStart7900407")
end

function Quest79004:OnSubFinish7900407(arg1)
    print("OnSubFinish7900407")
end

function Quest79004:OnSubFailed7900407(arg1)
    print("OnSubFailed7900407")
end

function Quest79004:OnSubStart7900408(arg1)
    print("OnSubStart7900408")
end

function Quest79004:OnSubFinish7900408(arg1)
    print("OnSubFinish7900408")
    print("createpaimon")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcWithPos(arg1, npcs.PaimonData.id, 0, avatarPos, M.Dir2Euler(v))
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest79004:OnSubFailed7900408(arg1)
    print("OnSubFailed7900408")
end

function Quest79004:OnSubStart7900409(arg1)
    print("OnSubStart7900409")
end

function Quest79004:OnSubFinish7900409(arg1)
    print("OnSubFinish7900409")
end

function Quest79004:OnSubFailed7900409(arg1)
    print("OnSubFailed7900409")
end

function Quest79004:OnSubStart7900411(arg1)
    print("OnSubStart7900411")
end

function Quest79004:OnSubFinish7900411(arg1)
    print("OnSubFinish7900411")
end

function Quest79004:OnSubFailed7900411(arg1)
    print("OnSubFailed7900411")
end

function Quest79004:OnSubStart7900410(arg1)
    print("OnSubStart7900410")
end

function Quest79004:OnSubFinish7900410(arg1)
    print("OnSubFinish7900410")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest79004:OnSubFailed7900410(arg1)
    print("OnSubFailed7900410")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest79004:OnSubStart7900422(arg1)
    print("OnSubStart7900422")
end

function Quest79004:OnSubFinish7900422(arg1)
    print("OnSubFinish7900422")
end

function Quest79004:OnSubFailed7900422(arg1)
    print("OnSubFailed7900422")
end

function Quest79004:OnSubStart7900403(arg1)
    print("OnSubStart7900403")
    self:CreateQuestNpc(arg1, npcs.Npc164201Data.id, 1)
    self:NotifyTo(npcs.Npc1642Data.alias, 1, true)
end

function Quest79004:OnSubFinish7900403(arg1)
    print("OnSubFinish7900403")
end

function Quest79004:OnSubFailed7900403(arg1)
    print("OnSubFailed7900403")
end

function Quest79004:OnSubStart7900404(arg1)
    print("OnSubStart7900404")
    self:CreateQuestNpc(arg1, npcs.Npc164201Data.id, 1)
    self:NotifyTo(npcs.Npc1642Data.alias, 1, true)
end

function Quest79004:OnSubFinish7900404(arg1)
    print("OnSubFinish7900404")
    self:LightNotifyTo(npcs.Npc1642Data.alias, 0, true)
end

function Quest79004:OnSubFailed7900404(arg1)
    print("OnSubFailed7900404")
end

function Quest79004:OnSubStart7900417(arg1)
    print("OnSubStart7900417")
    print("createpaimon")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcWithPos(arg1, npcs.PaimonData.id, 0, avatarPos, M.Dir2Euler(v))
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest79004:OnSubFinish7900417(arg1)
    print("OnSubFinish7900417")
    if self:GetQuestVar(7900417, 0) ~= 1 then
        self:ActionSafeCall(function(arg1)
            local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
            if questNpcActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end)
    end
end

function Quest79004:OnSubFailed7900417(arg1)
    print("OnSubFailed7900417")
end

function Quest79004:OnSubStart7900419(arg1)
    print("OnSubStart7900419")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcWithPos(arg1, npcs.PaimonData.id, 0, avatarPos, M.Dir2Euler(v))
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest79004:OnSubFinish7900419(arg1)
    print("OnSubFinish7900419")
    if self:GetQuestVar(7900419, 0) ~= 1 then
        self:ActionSafeCall(function(arg1)
            local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
            if questNpcActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end)
    end
end

function Quest79004:OnSubFailed7900419(arg1)
    print("OnSubFailed7900419")
end

function Quest79004:OnSubStart7900420(arg1)
    print("OnSubStart7900420")
end

function Quest79004:OnSubFinish7900420(arg1)
    print("OnSubFinish7900420")
end

function Quest79004:OnSubFailed7900420(arg1)
    print("OnSubFailed7900420")
end

function Quest79004:OnSubStart7900421(arg1)
    print("OnSubStart7900421")
end

function Quest79004:OnSubFinish7900421(arg1)
    print("OnSubFinish7900421")
end

function Quest79004:OnSubFailed7900421(arg1)
    print("OnSubFailed7900421")
end

function Quest79004:OnSubStart7900418(arg1)
    print("OnSubStart7900418")
end

function Quest79004:OnSubFinish7900418(arg1)
    print("OnSubFinish7900418")
end

function Quest79004:OnSubFailed7900418(arg1)
    print("OnSubFailed7900418")
end

function Quest79004:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("param == 1")
        self:ShowQuestPictureDialog(1024)
    end

    if arg1 == 2 then
        print("param == 2")
        self:ShowQuestPictureDialog(1025)
    end

    if arg1 == 3 then
        print("param == 3")
        self:ShowQuestPictureDialog(1026)
    end

    if arg1 == 4 then
        print("param == 4")
        self:ShowQuestPictureDialog(1027)
    end

    if arg1 == 5 then
        print("param == 5")
        self:ShowQuestPictureDialog(1028)
    end
end

return Quest79004
