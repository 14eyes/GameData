require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72114 = class("Quest72114", QuestActorProxy)
Quest72114.defaultAlias = "Quest72114"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72114:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72114:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7211401"] = self.OnSubStart7211401,
        ["7211402"] = self.OnSubStart7211402,
        ["7211403"] = self.OnSubStart7211403,
        ["7211427"] = self.OnSubStart7211427,
        ["7211423"] = self.OnSubStart7211423,
        ["7211424"] = self.OnSubStart7211424,
        ["7211428"] = self.OnSubStart7211428,
        ["7211425"] = self.OnSubStart7211425,
        ["7211404"] = self.OnSubStart7211404,
        ["7211405"] = self.OnSubStart7211405,
        ["7211406"] = self.OnSubStart7211406,
        ["7211407"] = self.OnSubStart7211407,
        ["7211408"] = self.OnSubStart7211408,
        ["7211409"] = self.OnSubStart7211409,
        ["7211410"] = self.OnSubStart7211410,
        ["7211411"] = self.OnSubStart7211411,
        ["7211412"] = self.OnSubStart7211412,
        ["7211413"] = self.OnSubStart7211413,
        ["7211414"] = self.OnSubStart7211414,
        ["7211415"] = self.OnSubStart7211415,
        ["7211426"] = self.OnSubStart7211426,
        ["7211416"] = self.OnSubStart7211416,
        ["7211417"] = self.OnSubStart7211417,
        ["7211418"] = self.OnSubStart7211418,
        ["7211419"] = self.OnSubStart7211419,
        ["7211420"] = self.OnSubStart7211420,
        ["7211421"] = self.OnSubStart7211421,
        ["7211422"] = self.OnSubStart7211422
    }
end

function Quest72114:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7211401"] = self.OnSubFinish7211401,
        ["7211402"] = self.OnSubFinish7211402,
        ["7211403"] = self.OnSubFinish7211403,
        ["7211427"] = self.OnSubFinish7211427,
        ["7211423"] = self.OnSubFinish7211423,
        ["7211424"] = self.OnSubFinish7211424,
        ["7211428"] = self.OnSubFinish7211428,
        ["7211425"] = self.OnSubFinish7211425,
        ["7211404"] = self.OnSubFinish7211404,
        ["7211405"] = self.OnSubFinish7211405,
        ["7211406"] = self.OnSubFinish7211406,
        ["7211407"] = self.OnSubFinish7211407,
        ["7211408"] = self.OnSubFinish7211408,
        ["7211409"] = self.OnSubFinish7211409,
        ["7211410"] = self.OnSubFinish7211410,
        ["7211411"] = self.OnSubFinish7211411,
        ["7211412"] = self.OnSubFinish7211412,
        ["7211413"] = self.OnSubFinish7211413,
        ["7211414"] = self.OnSubFinish7211414,
        ["7211415"] = self.OnSubFinish7211415,
        ["7211426"] = self.OnSubFinish7211426,
        ["7211416"] = self.OnSubFinish7211416,
        ["7211417"] = self.OnSubFinish7211417,
        ["7211418"] = self.OnSubFinish7211418,
        ["7211419"] = self.OnSubFinish7211419,
        ["7211420"] = self.OnSubFinish7211420,
        ["7211421"] = self.OnSubFinish7211421,
        ["7211422"] = self.OnSubFinish7211422
    }
end

function Quest72114:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7211401"] = self.OnSubFailed7211401,
        ["7211402"] = self.OnSubFailed7211402,
        ["7211403"] = self.OnSubFailed7211403,
        ["7211427"] = self.OnSubFailed7211427,
        ["7211423"] = self.OnSubFailed7211423,
        ["7211424"] = self.OnSubFailed7211424,
        ["7211428"] = self.OnSubFailed7211428,
        ["7211425"] = self.OnSubFailed7211425,
        ["7211404"] = self.OnSubFailed7211404,
        ["7211405"] = self.OnSubFailed7211405,
        ["7211406"] = self.OnSubFailed7211406,
        ["7211407"] = self.OnSubFailed7211407,
        ["7211408"] = self.OnSubFailed7211408,
        ["7211409"] = self.OnSubFailed7211409,
        ["7211410"] = self.OnSubFailed7211410,
        ["7211411"] = self.OnSubFailed7211411,
        ["7211412"] = self.OnSubFailed7211412,
        ["7211413"] = self.OnSubFailed7211413,
        ["7211414"] = self.OnSubFailed7211414,
        ["7211415"] = self.OnSubFailed7211415,
        ["7211426"] = self.OnSubFailed7211426,
        ["7211416"] = self.OnSubFailed7211416,
        ["7211417"] = self.OnSubFailed7211417,
        ["7211418"] = self.OnSubFailed7211418,
        ["7211419"] = self.OnSubFailed7211419,
        ["7211420"] = self.OnSubFailed7211420,
        ["7211421"] = self.OnSubFailed7211421,
        ["7211422"] = self.OnSubFailed7211422
    }
end

function Quest72114:Start()
    print("Start")
end

function Quest72114:OnDestroy()
    print("OnDestroy")
end

function Quest72114:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72114:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72114:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72114:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72114:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72114:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72114:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("Invoke 1")
        self:ShowReadingDialog(100978)
    end
end

function Quest72114:Csfinish7211426()
    print("Csfinish7211426")
    self:FinishQuestID(false, 7211426)
end

function Quest72114:OnSubStart7211401(arg1)
    print("OnSubStart7211401")
end

function Quest72114:OnSubFinish7211401(arg1)
    print("OnSubFinish7211401")
end

function Quest72114:OnSubFailed7211401(arg1)
    print("OnSubFailed7211401")
end

function Quest72114:OnSubStart7211402(arg1)
    print("OnSubStart7211402")
end

function Quest72114:OnSubFinish7211402(arg1)
    print("OnSubFinish7211402")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3163Data.id, 1)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3185Data.id, 2)
end

function Quest72114:OnSubFailed7211402(arg1)
    print("OnSubFailed7211402")
end

function Quest72114:OnSubStart7211403(arg1)
    print("OnSubStart7211403")
    self:NpcCreate(arg1, npcs.Npc3162Data.id, 1)
end

function Quest72114:OnSubFinish7211403(arg1)
    print("OnSubFinish7211403")
end

function Quest72114:OnSubFailed7211403(arg1)
    print("OnSubFailed7211403")
end

function Quest72114:OnSubStart7211427(arg1)
    print("OnSubStart7211427")
    globalActor:EnablePlayerInput(false)
    local paimonData = npcs.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    local n = 1.5
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcByIdWithPos(7211427, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v))
    self:RequestInteraction(npcs.PaimonData.alias)
    globalActor:EnablePlayerInput(true)
end

function Quest72114:OnSubFinish7211427(arg1)
    print("OnSubFinish7211427")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72114:OnSubFailed7211427(arg1)
    print("OnSubFailed7211427")
end

function Quest72114:OnSubStart7211423(arg1)
    print("OnSubStart7211423")
end

function Quest72114:OnSubFinish7211423(arg1)
    print("OnSubFinish7211423")
end

function Quest72114:OnSubFailed7211423(arg1)
    print("OnSubFailed7211423")
end

function Quest72114:OnSubStart7211424(arg1)
    print("OnSubStart7211424")
end

function Quest72114:OnSubFinish7211424(arg1)
    print("OnSubFinish7211424")
end

function Quest72114:OnSubFailed7211424(arg1)
    print("OnSubFailed7211424")
end

function Quest72114:OnSubStart7211428(arg1)
    print("OnSubStart7211428")
end

function Quest72114:OnSubFinish7211428(arg1)
    print("OnSubFinish7211428")
end

function Quest72114:OnSubFailed7211428(arg1)
    print("OnSubFailed7211428")
end

function Quest72114:OnSubStart7211425(arg1)
    print("OnSubStart7211425")
    globalActor:EnablePlayerInput(false)
    local paimonData = npcs.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    local n = 1.5
    local avatarForward = actorUtils.GetAvatarForward()
    local v = avatarForward.z / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    local n2 = -avatarForward.x / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    avatarPos.x = avatarPos.x + v * n
    avatarPos.z = avatarPos.z + n2 * n
    self:CreateQuestNpcByIdWithPos(7211425, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(avatarForward))
    self:RequestInteraction(npcs.PaimonData.alias)
    globalActor:EnablePlayerInput(true)
end

function Quest72114:OnSubFinish7211425(arg1)
    print("OnSubFinish7211425")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72114:OnSubFailed7211425(arg1)
    print("OnSubFailed7211425")
end

function Quest72114:OnSubStart7211404(arg1)
    print("OnSubStart7211404")
end

function Quest72114:OnSubFinish7211404(arg1)
    print("OnSubFinish7211404")
end

function Quest72114:OnSubFailed7211404(arg1)
    print("OnSubFailed7211404")
end

function Quest72114:OnSubStart7211405(arg1)
    print("OnSubStart7211405")
end

function Quest72114:OnSubFinish7211405(arg1)
    print("OnSubFinish7211405")
end

function Quest72114:OnSubFailed7211405(arg1)
    print("OnSubFailed7211405")
end

function Quest72114:OnSubStart7211406(arg1)
    print("OnSubStart7211406")
end

function Quest72114:OnSubFinish7211406(arg1)
    print("OnSubFinish7211406")
end

function Quest72114:OnSubFailed7211406(arg1)
    print("OnSubFailed7211406")
end

function Quest72114:OnSubStart7211407(arg1)
    print("OnSubStart7211407")
end

function Quest72114:OnSubFinish7211407(arg1)
    print("OnSubFinish7211407")
end

function Quest72114:OnSubFailed7211407(arg1)
    print("OnSubFailed7211407")
end

function Quest72114:OnSubStart7211408(arg1)
    print("OnSubStart7211408")
end

function Quest72114:OnSubFinish7211408(arg1)
    print("OnSubFinish7211408")
end

function Quest72114:OnSubFailed7211408(arg1)
    print("OnSubFailed7211408")
end

function Quest72114:OnSubStart7211409(arg1)
    print("OnSubStart7211409")
end

function Quest72114:OnSubFinish7211409(arg1)
    print("OnSubFinish7211409")
end

function Quest72114:OnSubFailed7211409(arg1)
    print("OnSubFailed7211409")
end

function Quest72114:OnSubStart7211410(arg1)
    print("OnSubStart7211410")
end

function Quest72114:OnSubFinish7211410(arg1)
    print("OnSubFinish7211410")
end

function Quest72114:OnSubFailed7211410(arg1)
    print("OnSubFailed7211410")
end

function Quest72114:OnSubStart7211411(arg1)
    print("OnSubStart7211411")
end

function Quest72114:OnSubFinish7211411(arg1)
    print("OnSubFinish7211411")
end

function Quest72114:OnSubFailed7211411(arg1)
    print("OnSubFailed7211411")
end

function Quest72114:OnSubStart7211412(arg1)
    print("OnSubStart7211412")
end

function Quest72114:OnSubFinish7211412(arg1)
    print("OnSubFinish7211412")
end

function Quest72114:OnSubFailed7211412(arg1)
    print("OnSubFailed7211412")
end

function Quest72114:OnSubStart7211413(arg1)
    print("OnSubStart7211413")
end

function Quest72114:OnSubFinish7211413(arg1)
    print("OnSubFinish7211413")
end

function Quest72114:OnSubFailed7211413(arg1)
    print("OnSubFailed7211413")
end

function Quest72114:OnSubStart7211414(arg1)
    print("OnSubStart7211414")
end

function Quest72114:OnSubFinish7211414(arg1)
    print("OnSubFinish7211414")
end

function Quest72114:OnSubFailed7211414(arg1)
    print("OnSubFailed7211414")
end

function Quest72114:OnSubStart7211415(arg1)
    print("OnSubStart7211415")
end

function Quest72114:OnSubFinish7211415(arg1)
    print("OnSubFinish7211415")
end

function Quest72114:OnSubFailed7211415(arg1)
    print("OnSubFailed7211415")
end

function Quest72114:OnSubStart7211426(arg1)
    print("OnSubStart7211426")
    self:PlayCutsceneIndex("7211414", self.Csfinish7211426, nil, nil, false)
end

function Quest72114:OnSubFinish7211426(arg1)
    print("OnSubFinish7211426")
end

function Quest72114:OnSubFailed7211426(arg1)
    print("OnSubFailed7211426")
end

function Quest72114:OnSubStart7211416(arg1)
    print("OnSubStart7211416")
end

function Quest72114:OnSubFinish7211416(arg1)
    print("OnSubFinish7211416")
end

function Quest72114:OnSubFailed7211416(arg1)
    print("OnSubFailed7211416")
end

function Quest72114:OnSubStart7211417(arg1)
    print("OnSubStart7211417")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc3162Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
    end)
end

function Quest72114:OnSubFinish7211417(arg1)
    print("OnSubFinish7211417")
    self:GetQuestNpcActor(npcs.Npc3162Data.alias):DoFreeStateTrigger()
end

function Quest72114:OnSubFailed7211417(arg1)
    print("OnSubFailed7211417")
end

function Quest72114:OnSubStart7211418(arg1)
    print("OnSubStart7211418")
end

function Quest72114:OnSubFinish7211418(arg1)
    print("OnSubFinish7211418")
end

function Quest72114:OnSubFailed7211418(arg1)
    print("OnSubFailed7211418")
end

function Quest72114:OnSubStart7211419(arg1)
    print("OnSubStart7211419")
end

function Quest72114:OnSubFinish7211419(arg1)
    print("OnSubFinish7211419")
end

function Quest72114:OnSubFailed7211419(arg1)
    print("OnSubFailed7211419")
end

function Quest72114:OnSubStart7211420(arg1)
    print("OnSubStart7211420")
end

function Quest72114:OnSubFinish7211420(arg1)
    print("OnSubFinish7211420")
end

function Quest72114:OnSubFailed7211420(arg1)
    print("OnSubFailed7211420")
end

function Quest72114:OnSubStart7211421(arg1)
    print("OnSubStart7211421")
end

function Quest72114:OnSubFinish7211421(arg1)
    print("OnSubFinish7211421")
end

function Quest72114:OnSubFailed7211421(arg1)
    print("OnSubFailed7211421")
end

function Quest72114:OnSubStart7211422(arg1)
    print("OnSubStart7211422")
end

function Quest72114:OnSubFinish7211422(arg1)
    print("OnSubFinish7211422")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3163Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3185Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3162Data.alias)
end

function Quest72114:OnSubFailed7211422(arg1)
    print("OnSubFailed7211422")
end

return Quest72114
