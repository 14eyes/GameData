require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79050 = class("Quest79050", QuestActorProxy)
Quest79050.defaultAlias = "Quest79050"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest79050:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79050:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7905001"] = self.OnSubStart7905001,
        ["7905002"] = self.OnSubStart7905002,
        ["7905003"] = self.OnSubStart7905003,
        ["7905013"] = self.OnSubStart7905013,
        ["7905016"] = self.OnSubStart7905016,
        ["7905014"] = self.OnSubStart7905014,
        ["7905004"] = self.OnSubStart7905004,
        ["7905005"] = self.OnSubStart7905005,
        ["7905006"] = self.OnSubStart7905006,
        ["7905007"] = self.OnSubStart7905007,
        ["7905008"] = self.OnSubStart7905008,
        ["7905009"] = self.OnSubStart7905009,
        ["7905012"] = self.OnSubStart7905012,
        ["7905010"] = self.OnSubStart7905010,
        ["7905011"] = self.OnSubStart7905011,
        ["7905015"] = self.OnSubStart7905015
    }
end

function Quest79050:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7905001"] = self.OnSubFinish7905001,
        ["7905002"] = self.OnSubFinish7905002,
        ["7905003"] = self.OnSubFinish7905003,
        ["7905013"] = self.OnSubFinish7905013,
        ["7905016"] = self.OnSubFinish7905016,
        ["7905014"] = self.OnSubFinish7905014,
        ["7905004"] = self.OnSubFinish7905004,
        ["7905005"] = self.OnSubFinish7905005,
        ["7905006"] = self.OnSubFinish7905006,
        ["7905007"] = self.OnSubFinish7905007,
        ["7905008"] = self.OnSubFinish7905008,
        ["7905009"] = self.OnSubFinish7905009,
        ["7905012"] = self.OnSubFinish7905012,
        ["7905010"] = self.OnSubFinish7905010,
        ["7905011"] = self.OnSubFinish7905011,
        ["7905015"] = self.OnSubFinish7905015
    }
end

function Quest79050:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79050:Start()
    print("Start")
end

function Quest79050:OnDestroy()
    print("OnDestroy")
end

function Quest79050:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79050:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79050:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79050:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    this:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest79050:OnSubStart7905001(arg1)
    print("OnSubStart7905001")
end

function Quest79050:OnSubFinish7905001(arg1)
    print("OnSubFinish7905001")
end

function Quest79050:OnSubStart7905002(arg1)
    print("OnSubStart7905002")
end

function Quest79050:OnSubFinish7905002(arg1)
    print("OnSubFinish7905002")
end

function Quest79050:OnSubStart7905003(arg1)
    print("OnSubStart7905003")
end

function Quest79050:OnSubFinish7905003(arg1)
    print("OnSubFinish7905003")
end

function Quest79050:OnSubStart7905013(arg1)
    print("OnSubStart7905013")
end

function Quest79050:OnSubFinish7905013(arg1)
    print("OnSubFinish7905013")
end

function Quest79050:OnSubStart7905016(arg1)
    print("OnSubStart7905016")
end

function Quest79050:OnSubFinish7905016(arg1)
    print("OnSubFinish7905016")
end

function Quest79050:OnSubStart7905014(arg1)
    print("OnSubStart7905014")
end

function Quest79050:OnSubFinish7905014(arg1)
    print("OnSubFinish7905014")
end

function Quest79050:OnSubStart7905004(arg1)
    print("OnSubStart7905004")
end

function Quest79050:OnSubFinish7905004(arg1)
    print("OnSubFinish7905004")
end

function Quest79050:OnSubStart7905005(arg1)
    print("OnSubStart7905005")
end

function Quest79050:OnSubFinish7905005(arg1)
    print("OnSubFinish7905005")
end

function Quest79050:OnSubStart7905006(arg1)
    print("OnSubStart7905006")
end

function Quest79050:OnSubFinish7905006(arg1)
    print("OnSubFinish7905006")
end

function Quest79050:OnSubStart7905007(arg1)
    print("OnSubStart7905007")
end

function Quest79050:OnSubFinish7905007(arg1)
    print("OnSubFinish7905007")
end

function Quest79050:OnSubStart7905008(arg1)
    print("OnSubStart7905008")
end

function Quest79050:OnSubFinish7905008(arg1)
    print("OnSubFinish7905008")
end

function Quest79050:OnSubStart7905009(arg1)
    print("OnSubStart7905009")
end

function Quest79050:OnSubFinish7905009(arg1)
    print("OnSubFinish7905009")
end

function Quest79050:OnSubStart7905012(arg1)
    print("OnSubStart7905012")
end

function Quest79050:OnSubFinish7905012(arg1)
    print("OnSubFinish7905012")
end

function Quest79050:OnSubStart7905010(arg1)
    print("OnSubStart7905010")
    this:CreateQuestNpcFaceToPlayer(7905010, npcs.PaimonData.id, 1.5)
    this:RequestInteraction(npcs.PaimonData.alias)
end

function Quest79050:OnSubFinish7905010(arg1)
    print("OnSubFinish7905010")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79050:OnSubStart7905011(arg1)
    print("OnSubStart7905011")
end

function Quest79050:OnSubFinish7905011(arg1)
    print("OnSubFinish7905011")
end

function Quest79050:OnSubStart7905015(arg1)
    print("OnSubStart7905015")
    this:CreateQuestNpcFaceToPlayer(7905015, npcs.PaimonData.id, 1.5)
    this:RequestInteraction(npcs.PaimonData.alias)
end

function Quest79050:OnSubFinish7905015(arg1)
    print("OnSubFinish7905015")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

return Quest79050
